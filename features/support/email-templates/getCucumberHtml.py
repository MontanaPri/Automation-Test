#!/usr/bin/env python3.4

"""
This code lives in /var/lib/jenkins/workspace/BTRIS_Quick_Test_New/features/support/email-templates on the Jenkins servers.

It gets executed in the Bug_Automation_Test job, as a Pre-Send Script which
is part of the email extenstion plugin which was added as part of that job.

The Pre-Send script is:

    def env = build.getEnvironment()
    String b_id = env['BUILD_ID'];

    // call the python code with the build id and obtain the results
    def command = "/var/lib/jenkins/workspace/BTRIS_Quick_Test_New/features/support/email-templates/getCucumberHtml.py --buildid ${b_id}"
    def proc = command.execute()
    proc.waitFor()
    def result = proc.in.text

    // set the content in the message
    msg.setContent(result, "text/html;charset=utf-8")
    msg.saveChanges()

"""

import mechanicalsoup
import argparse


def buildOutput(table):

    output = "<style>"
    with open("/var/lib/jenkins/workspace/BTRIS_Quick_Test_New/features/support/email-templates/cucumber.css", "r") as fd:
        output += fd.read()
    output += "</style>"

    # adjust all the links from relative to absolute
    alinks = table.findAll("a")
    for link in alinks:
        link['href'] = reportBaseUrl + link['href']

    output += str(table)

    return output


parser = argparse.ArgumentParser()
parser.add_argument("--buildid")
args = parser.parse_args()

loginUrl = "https://cc0dbtrisdoc.cc.nih.gov:9090/login?from=%2F"
reportBaseUrl = "https://cc0pbtrisdoc.cc.nih.gov:9090/job/BTRIS_Quick_Test_New/{0}/cucumber-html-reports/".format(args.buildid)
overview = "overview-features.html"

# Browser
browser = mechanicalsoup.Browser(soup_config={ 'features': 'lxml'})


# login first
login_page = browser.get(loginUrl, verify=False)
login_page.raise_for_status()
login_form = mechanicalsoup.Form(login_page.soup.select_one('form'))
login_form.input({ "j_username": "jenkins", "j_password": "Docengine97@"})

login_result = browser.submit(login_form, login_page.url)


# The site we will navigate into, handling it's session
reportPage = browser.get(reportBaseUrl + overview, verify=False)

# class="stats-table table-hover tablesorter tablesorter-default"
table = reportPage.soup.find("table", { "id" : "tablesorter" })


report = buildOutput(table)


print(report)
