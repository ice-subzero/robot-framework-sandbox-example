# Sandbox-automated-test

This is automated test Sandbox online web application by using robot framework

- Install after checkout repo:

  - > `pip install -r requirements.txt`

- or:

  - > `pip3 install -r requirements.txt`

- Download chrome driver from: https://googlechromelabs.github.io/chrome-for-testing/#stable
- Extract chromedriver then move to expected path. If you don't know the path, execute following command

  - For MacOs
    > `which chromedriver`
  - For Windows
    > `where chromedriver`

- Example command for run test with specify path to stored test results and run with browser headless mode
  > `robot -v isHeadless:True -d "D:\Automated_Test\robot-framework-sandbox-example\results" .\login_feature.robot`
- Example command for run test with specify test cases name run
  > `robot -v isHeadless:False -t "As an administrator, I want to login to sandbox system" .\login_feature.robot`

## Project structure

[![](https://mermaid.ink/img/pako:eNqF0d1LwzAQAPB_peQpwiboYx-EdZ3Ojzd9s1LO5Lp1a3rlcmWUsf_dtMK0uLm8JOR-9xGyV4YsqlgVFe3MGliitzSro7Bm7w3TBo1EtuSwEXcf0XR6l2hBLwY8-qv_5VxvsdsR20sw1YyeWjYXSy50A6ujSvqr6P5noJyKvECQljG_uWb6JBnRh9P0dkTnA10eh-9l3zWfnWCPf1kyYunAnnTpGmLxo9hiiD1rrNBhLXlFBsJTf3fswFUj_XJeJ99aTZRDdlDa8K_7PjdTsg45mYrD0QJvM5XVh-CgFXrtaqNi4RYnqm0sCKYlrBiciguoPB6-AAg-tgQ?type=png)](https://mermaid.live/edit#pako:eNqF0d1LwzAQAPB_peQpwiboYx-EdZ3Ojzd9s1LO5Lp1a3rlcmWUsf_dtMK0uLm8JOR-9xGyV4YsqlgVFe3MGliitzSro7Bm7w3TBo1EtuSwEXcf0XR6l2hBLwY8-qv_5VxvsdsR20sw1YyeWjYXSy50A6ujSvqr6P5noJyKvECQljG_uWb6JBnRh9P0dkTnA10eh-9l3zWfnWCPf1kyYunAnnTpGmLxo9hiiD1rrNBhLXlFBsJTf3fswFUj_XJeJ99aTZRDdlDa8K_7PjdTsg45mYrD0QJvM5XVh-CgFXrtaqNi4RYnqm0sCKYlrBiciguoPB6-AAg-tgQ)

## Naming convention

| Category | UI/Control type            | Prefix | Example         |
| -------- | -------------------------- | ------ | --------------- |
| Basic    | Button                     | btn    | btnExit         |
| Basic    | Check box                  | chk    | chkReadOnly     |
| Basic    | Combo box                  | cbo    | cboEnglish      |
| Basic    | Common dialog              | dlg    | dlgFileOpen     |
| Basic    | Date picker                | dtp    | dtpPublished    |
| Basic    | Dropdown List / Select tag | ddl    | ddlCountry      |
| Basic    | Form                       | frm    | frmEntry        |
| Basic    | Frame                      | fra    | fraLanguage     |
| Basic    | Image                      | img    | imgIcon         |
| Basic    | Label                      | lbl    | lblHelpMessage  |
| Basic    | Links/Anchor Tags          | lnk    | lnkForgotPwd    |
| Basic    | List box                   | lst    | lstPolicyCodes  |
| Basic    | Menu                       | mnu    | mnuFileOpen     |
| Basic    | Radio button / group       | rdo    | rdoGender       |
| Basic    | RichTextBox                | rtf    | rtfReport       |
| Basic    | Table                      | tbl    | tblCustomer     |
| Basic    | TabStrip                   | tab    | tabOptions      |
| Basic    | Text Area                  | txa    | txaDescription  |
| Basic    | Text box                   | txt    | txtLastName     |
| Complex  | Chevron                    | chv    | chvProtocol     |
| Complex  | Data grid                  | dgd    | dgdTitles       |
| Complex  | Data list                  | dbl    | dblPublisher    |
| Complex  | Directory list box         | dir    | dirSource       |
| Complex  | Drive list box             | drv    | drvTarget       |
| Complex  | File list box              | fil    | filSource       |
| Complex  | Panel/Fieldset             | pnl    | pnlGroup        |
| Complex  | ProgressBar                | prg    | prgLoadFile     |
| Complex  | Slider                     | sld    | sldScale        |
| Complex  | Spinner                    | spn    | spnPages        |
| Complex  | StatusBar                  | sta    | staDateTime     |
| Complex  | Timer                      | tmr    | tmrAlarm        |
| Complex  | Toolbar                    | tlb    | tlbActions      |
| Complex  | TreeView                   | tre    | treOrganization |
