// Generated using Bragi - do not edit directly

enum L10n {

  static let Label = tr("Localizable", "Label", fallback: "Label")
  static let Tab = tr("Localizable", "Tab", fallback: "Week")
  enum Absence {
    enum Conflicts {
      enum Manageshifts {
        enum Bottomsheet {
          static let subtitle = tr("Localizable", "absence_conflicts_manageshifts_bottomsheet_subtitle", fallback: "Some people will be unavailable for some shifts. You can unassign those shifts if needed")
          enum Subtitle {
            static let noconflicts = tr("Localizable", "absence_conflicts_manageshifts_bottomsheet_subtitle_noconflicts", fallback: "All people are available for the shifts assigned")
            }
          static func title(_ localized_format_key: Int) -> String {
              tr("Plurals", "absence_conflicts_manageshifts_bottomsheet_title", localized_format_key, fallback: "%d conflicts found")
          }
          enum Title {
            static let noconflicts = tr("Localizable", "absence_conflicts_manageshifts_bottomsheet_title_noconflicts", fallback: "No conflicts")
            }
          }
        enum Button {
          static let saveanyway = tr("Localizable", "absence_conflicts_manageshifts_button_saveanyway", fallback: "Save anyway")
          }
        }
      }
    }
  enum Absences {
    enum Assignation {
      enum Unavailable {
        enum Period {
          static let allday = tr("Localizable", "absences_assignation_unavailable_period_allday", fallback: "All day")
          static func range(_ p0: String, _ p1: String) -> String {
              tr("Localizable", "absences_assignation_unavailable_period_range", p0, p1, fallback: "From %@ to %@")
          }
          }
        }
      }
    enum Shift {
      enum Detail {
        enum Warning {
          enum Fixed {
            enum Assignments {
              static let draft = tr("Localizable", "absences_shift_detail_warning_fixed_assignments_draft", fallback: "Some people are unavailable. Consider reassigning shifts before publishing.")
              static let published = tr("Localizable", "absences_shift_detail_warning_fixed_assignments_published", fallback: "Some people are unavailable. Consider reassigning shifts to others.")
              }
            }
          enum Open {
            static let invites = tr("Localizable", "absences_shift_detail_warning_open_invites", fallback: "Send more invites. You’ve not met your confirmed target yet.")
            }
          }
        }
      }
    enum Unavailable {
      enum Assignation {
        enum Warning {
          enum Dialog {
            static let body = tr("Localizable", "absences_unavailable_assignation_warning_dialog_body", fallback: "You can still publish. However, the shifts will be automatically rejected and they will not be notified.")
            enum Multipleworkers {
              static let body = tr("Localizable", "absences_unavailable_assignation_warning_dialog_multipleworkers_body", fallback: "You can still publish. However, the shifts will be automatically rejected and they will not be notified.")
              }
            static let primarybutton = tr("Localizable", "absences_unavailable_assignation_warning_dialog_primarybutton", fallback: "Publish anyway")
            enum Singleworker {
              static func title(_ p0: String) -> String {
                  tr("Localizable", "absences_unavailable_assignation_warning_dialog_singleworker_title", p0, fallback: "%@ is unavailable")
              }
              }
            }
          }
        }
      enum Period {
        static let allday = tr("Localizable", "absences_unavailable_period_allday", fallback: ", all day")
        static func range(_ p0: String, _ p1: String) -> String {
            tr("Localizable", "absences_unavailable_period_range", p0, p1, fallback: ", from %@ to %@")
        }
        }
      enum Publish {
        enum Warning {
          enum Dialog {
            static let body = tr("Localizable", "absences_unavailable_publish_warning_dialog_body", fallback: "You can still publish. However, the shifts will be automatically rejected without sending any notification.")
            enum Multipleworkers {
              static func title(_ p0: String) -> String {
                  tr("Localizable", "absences_unavailable_publish_warning_dialog_multipleworkers_title", p0, fallback: "%@ people unavailable")
              }
              }
            static let primarybutton = tr("Localizable", "absences_unavailable_publish_warning_dialog_primarybutton", fallback: "Publish anyway")
            enum Singleworker {
              static func title(_ p0: String) -> String {
                  tr("Localizable", "absences_unavailable_publish_warning_dialog_singleworker_title", p0, fallback: "%@ is unavailable")
              }
              }
            }
          }
        }
      enum Reason {
        enum Care {
          static let family = tr("Localizable", "absences_unavailable_reason_care_family", fallback: "Medical care for family")
          }
        static let holiday = tr("Localizable", "absences_unavailable_reason_holiday", fallback: "Holiday")
        static let personal = tr("Localizable", "absences_unavailable_reason_personal", fallback: "Personal reason or event")
        enum Personal {
          static let emergency = tr("Localizable", "absences_unavailable_reason_personal_emergency", fallback: "Personal emergency")
          }
        static let schedule = tr("Localizable", "absences_unavailable_reason_schedule", fallback: "Not my agreed schedule")
        static let sick = tr("Localizable", "absences_unavailable_reason_sick", fallback: "Sick or unwell")
        enum Travel {
          static let issue = tr("Localizable", "absences_unavailable_reason_travel_issue", fallback: "Travel issue")
          }
        }
      enum Warning {
        enum Dialog {
          static let body = tr("Localizable", "absences_unavailable_warning_dialog_body", fallback: "You can still save changes. However, the shifts will be automatically rejected without sending any notification.")
          enum Multipleworkers {
            static func title(_ p0: String) -> String {
                tr("Localizable", "absences_unavailable_warning_dialog_multipleworkers_title", p0, fallback: "%@ people unavailable")
            }
            }
          static let primarybutton = tr("Localizable", "absences_unavailable_warning_dialog_primarybutton", fallback: "Save anyway")
          }
        }
      }
    }
  enum ActivateAccount {
    static let subtitle = tr("Localizable", "activateAccount_subtitle", fallback: "Enter your email and we’ll send you an email to activate your account.")
    static let title = tr("Localizable", "activateAccount_title", fallback: "Activate your account")
    }
  enum Android {
    enum Notification {
      enum Rationale {
        enum Permission {
          static let description = tr("Localizable", "android_notification_rationale_permission_description", fallback: "Notifications help you organise upcoming shifts and remind you to approve hours.")
          static let title = tr("Localizable", "android_notification_rationale_permission_title", fallback: "Don't fall behind")
          }
        }
      }
    }
  static let appName = tr("Localizable", "appName", fallback: "J&T Business")
  enum ApproveHours {
    static let body = tr("Localizable", "approveHours_body", fallback: "Confirm that these details are correct before approving hours.")
    enum Button {
      static let approve = tr("Localizable", "approveHours_button_approve", fallback: "Yes, approve")
      }
    static let title = tr("Localizable", "approveHours_title", fallback: "Approve hours?")
    }
  enum AssignSupervisor {
    enum Empty {
      static let description = tr("Localizable", "assignSupervisor_empty_description", fallback: "Contact your Job&Talent account manager to create supervisors for your workplace.")
      static let title = tr("Localizable", "assignSupervisor_empty_title", fallback: "No supervisors created yet")
      }
    static let title = tr("Localizable", "assignSupervisor_title", fallback: "Assign supervisor")
    }
  enum AssignWorkers {
    enum Operation {
      enum In {
        enum Progress {
          enum Snackbar {
            static let description = tr("Localizable", "assignWorkers_operation_in_progress_snackbar_description", fallback: "Your assignments are being updated")
            static let title = tr("Localizable", "assignWorkers_operation_in_progress_snackbar_title", fallback: "Updating assignments…")
            }
          }
        }
      }
    }
  enum Assignation {
    enum Filters {
      enum Category {
        static let availability = tr("Localizable", "assignation_filters_category_availability", fallback: "Availability")
        }
      }
    }
  enum Attendance {
    static func attendanceRateDate(_ p0: String) -> String {
        tr("Localizable", "attendance_attendanceRateDate", p0, fallback: "attendance • %@")
    }
    enum Attendee {
      static let empty = tr("Localizable", "attendance_attendee_empty", fallback: "It looks like no one attended. Make sure everyone clocked in.")
      }
    enum AttendeeList {
      static let empty = tr("Localizable", "attendance_attendeeList_empty", fallback: "No one turned up at work today.")
      }
    enum Chart {
      static func peopleCount(_ p0: String) -> String {
          tr("Localizable", "attendance_chart_peopleCount", p0, fallback: "%s people")
      }
      }
    enum Count {
      static let assignedTitle = tr("Localizable", "attendance_count_assignedTitle", fallback: "assigned")
      static let attendedTitle = tr("Localizable", "attendance_count_attendedTitle", fallback: "attended")
      static let noShowsTitle = tr("Localizable", "attendance_count_noShowsTitle", fallback: "no shows")
      }
    enum Kpi {
      static let assigned = tr("Localizable", "attendance_kpi_assigned", fallback: "Assigned")
      static let attended = tr("Localizable", "attendance_kpi_attended", fallback: "Attended")
      static let noshows = tr("Localizable", "attendance_kpi_noshows", fallback: "No shows")
      }
    enum NoShifts {
      static let notToday = tr("Localizable", "attendance_noShifts_notToday", fallback: "There were no clockings on this day")
      static let today = tr("Localizable", "attendance_noShifts_today", fallback: "There are no clockings today")
      }
    enum NoShow {
      static let empty = tr("Localizable", "attendance_noShow_empty", fallback: "Good job. Everyone attended. ")
      }
    enum NoShowList {
      static let empty = tr("Localizable", "attendance_noShowList_empty", fallback: "Everyone turned up today.")
      }
    enum ShiftList {
      static func header(_ p0: Int) -> String {
          tr("Localizable", "attendance_shiftList_header", p0, fallback: "%d shifts")
      }
      }
    enum Status {
      static let available = tr("Localizable", "attendance_status_available", fallback: "Available")
      static let unavailable = tr("Localizable", "attendance_status_unavailable", fallback: "Unavailable")
      }
    }
  enum Attendancetab {
    enum Attendance {
      enum Customgraph {
        enum Body {
          static let attendance = tr("Localizable", "attendancetab_attendance_customgraph_body_attendance", fallback: "attendance")
          }
        }
      }
    enum Satisfactionrate {
      enum Body {
        static func satisfaction(_ p0: String) -> String {
            tr("Localizable", "attendancetab_satisfactionrate_body_satisfaction", p0, fallback: "%@ satisfaction")
        }
        }
      }
    enum Shifts {
      enum Emptystate {
        enum Bodytext {
          static let futureday = tr("Localizable", "attendancetab_shifts_emptystate_bodytext_futureday", fallback: "No shifts planned for this day")
          }
        }
      }
    }
  enum BulkApprove {
    enum Error {
      static func description(_ p0: Int) -> String {
          tr("Localizable", "bulkApprove_error_description", p0, fallback: "We could not approve hours for %1$d people. 
Try again?")
      }
      static let title = tr("Localizable", "bulkApprove_error_title", fallback: "Something went wrong")
      }
    static let header = tr("Localizable", "bulkApprove_header", fallback: "Approve hours")
    static let tryAgainButton = tr("Localizable", "bulkApprove_tryAgainButton", fallback: "Try again")
    static func unapproveMessage(_ p0: Int) -> String {
        tr("Localizable", "bulkApprove_unapproveMessage", p0, fallback: "We could not approve hours for %1$d people. 
Try again?")
    }
    }
  enum Button {
    static let cancel = tr("Localizable", "button_cancel", fallback: "Cancel")
    static let done = tr("Localizable", "button_done", fallback: "Done")
    }
  enum ClockingDetail {
    enum Field {
      static let break = tr("Localizable", "clockingDetail_field_break", fallback: "Break")
      }
    }
  enum ClockingDetails {
    enum Break {
      enum Bottomsheet {
        enum Button {
          static let canceldeletebreak = tr("Localizable", "clockingDetails_break_bottomsheet_button_canceldeletebreak", fallback: "Cancel")
          static let deletebreak = tr("Localizable", "clockingDetails_break_bottomsheet_button_deletebreak", fallback: "Yes, delete")
          }
        enum Description {
          static let deletebreak = tr("Localizable", "clockingDetails_break_bottomsheet_description_deletebreak", fallback: "Once you delete this break it won’t appear in the hours breakdown of this clocking. ")
          }
        enum Title {
          static let deletebreak = tr("Localizable", "clockingDetails_break_bottomsheet_title_deletebreak", fallback: "Delete this break?")
          }
        }
      }
    enum Geoattendance {
      enum BottomSheet {
        enum InfoHint {
          static let available = tr("Localizable", "clockingDetails_geoattendance_bottomSheet_infoHint_available", fallback: "This person was on site, but they may have clocked in elsewhere.")
          static let missingHours = tr("Localizable", "clockingDetails_geoattendance_bottomSheet_infoHint_missingHours", fallback: "This person was on site, but their times are missing.")
          }
        enum Title {
          static let available = tr("Localizable", "clockingDetails_geoattendance_bottomSheet_title_available", fallback: "Geolocation available")
          }
        }
      }
    enum Geolocation {
      static let available = tr("Localizable", "clockingDetails_geolocation_available", fallback: "Confirmed on site with geolocation. ")
      static let finishonsite = tr("Localizable", "clockingDetails_geolocation_finishonsite", fallback: "Finish time confirmed with geolocation.")
      enum NoShow {
        static let confirmation = tr("Localizable", "clockingDetails_geolocation_noShow_confirmation", fallback: "Geolocation shows that this person was on site for this shift. Be certain before you confirm.")
        }
      static let notAvailable = tr("Localizable", "clockingDetails_geolocation_notAvailable", fallback: "Geolocation not available.")
      static let startonsite = tr("Localizable", "clockingDetails_geolocation_startonsite", fallback: "Start time confirmed with geolocation.")
      static let timesConfirmed = tr("Localizable", "clockingDetails_geolocation_timesConfirmed", fallback: "Times confirmed with geolocation.")
      static let tip = tr("Localizable", "clockingDetails_geolocation_tip", fallback: "This person may not have geolocation enabled on their device, or the clocking may have occurred off site.")
      }
    enum Snackbar {
      enum Subtitle {
        static let breakdeleted = tr("Localizable", "clockingDetails_snackbar_subtitle_breakdeleted", fallback: "The clocking details have been updated.")
        static let breakupdated = tr("Localizable", "clockingDetails_snackbar_subtitle_breakupdated", fallback: "The clocking details have been updated.")
        }
      enum Title {
        static let breakdeleted = tr("Localizable", "clockingDetails_snackbar_title_breakdeleted", fallback: "Break deleted")
        static let breakupdated = tr("Localizable", "clockingDetails_snackbar_title_breakupdated", fallback: "Break updated")
        }
      }
    }
  enum ClockingShift {
    enum Label {
      static let ended = tr("Localizable", "clockingShift_label_ended", fallback: "Review")
      }
    }
  enum ClockingShiftDetails {
    enum Actions {
      static let approveHours = tr("Localizable", "clockingShiftDetails_actions_approveHours", fallback: "Approve hours")
      }
    enum Approved {
      static let chip = tr("Localizable", "clockingShiftDetails_approved_chip", fallback: "Approved")
      static func title(_ p0: Int) -> String {
          tr("Localizable", "clockingShiftDetails_approved_title", p0, fallback: "%1$d people")
      }
      }
    enum BulkComplete {
      static func selectedPeople(_ p0: Int) -> String {
          tr("Localizable", "clockingShiftDetails_bulkComplete_selectedPeople", p0, fallback: "%1$d selected")
      }
      }
    enum Button {
      static let approveHours = tr("Localizable", "clockingShiftDetails_button_approveHours", fallback: "Approve hours")
      }
    enum Date {
      static func info(_ p0: String) -> String {
          tr("Localizable", "clockingShiftDetails_date_info", p0, fallback: "Started on %s")
      }
      }
    static func editedHours(_ p0: String, _ p1: String) -> String {
        tr("Localizable", "clockingShiftDetails_editedHours", p0, p1, fallback: "Times edited, was %@ - %@")
    }
    enum EditedHours {
      enum Single {
        static func data(_ p0: String) -> String {
            tr("Localizable", "clockingShiftDetails_editedHours_single_data", p0, fallback: "Times edited, was %@")
        }
        }
      }
    enum Ended {
      static let chip = tr("Localizable", "clockingShiftDetails_ended_chip", fallback: "Review")
      static func title(_ p0: Int) -> String {
          tr("Localizable", "clockingShiftDetails_ended_title", p0, fallback: "%1$d people")
      }
      }
    enum HoursApprovedAndRatingSaved {
      static let description = tr("Localizable", "clockingShiftDetails_hoursApprovedAndRatingSaved_description", fallback: "Recognize this person’s work with a star rating. ")
      static let title = tr("Localizable", "clockingShiftDetails_hoursApprovedAndRatingSaved_title", fallback: "Hours approved and rating saved")
      }
    enum Incomplete {
      static let chip = tr("Localizable", "clockingShiftDetails_incomplete_chip", fallback: "Incomplete")
      }
    enum InputHours {
      enum AutoFill {
        static let startAndFinishTimes = tr("Localizable", "clockingShiftDetails_inputHours_autoFill_startAndFinishTimes", fallback: "Add scheduled times")
        static let startTime = tr("Localizable", "clockingShiftDetails_inputHours_autoFill_startTime", fallback: "Add scheduled time")
        }
      }
    enum Live {
      static let chip = tr("Localizable", "clockingShiftDetails_live_chip", fallback: "Live")
      static func title(_ p0: Int) -> String {
          tr("Localizable", "clockingShiftDetails_live_title", p0, fallback: "%1$d people")
      }
      }
    enum No {
      enum Show {
        enum Saved {
          static let feedback = tr("Localizable", "clockingShiftDetails_no_show_saved_feedback", fallback: "Selection saved")
          }
        }
      }
    enum NoShow {
      enum ChangeJustification {
        enum Error {
          static let description = tr("Localizable", "clockingShiftDetails_noShow_changeJustification_error_description", fallback: "We couldn't save your selection.")
          }
        }
      enum ConfirmJustified {
        enum Snackbar {
          static let description = tr("Localizable", "clockingShiftDetails_noShow_confirmJustified_snackbar_description", fallback: "Absence marked as justified.")
          }
        }
      enum ConfirmNoShow {
        static let description = tr("Localizable", "clockingShiftDetails_noShow_confirmNoShow_description", fallback: "Once you confirm, this person will be marked as a no show and then notified.")
        enum Error {
          enum Snackbar {
            static let description = tr("Localizable", "clockingShiftDetails_noShow_confirmNoShow_error_snackbar_description", fallback: "We couldn't mark this person as a no show.
Please try again.")
            }
          }
        enum Snackbar {
          static let description = tr("Localizable", "clockingShiftDetails_noShow_confirmNoShow_snackbar_description", fallback: "Marked as a no show and person notified.")
          static let title = tr("Localizable", "clockingShiftDetails_noShow_confirmNoShow_snackbar_title", fallback: "No show confirmed")
          }
        static let title = tr("Localizable", "clockingShiftDetails_noShow_confirmNoShow_title", fallback: "Confirm this no show?")
        }
      enum ConfirmNotJustified {
        enum Snackbar {
          static let description = tr("Localizable", "clockingShiftDetails_noShow_confirmNotJustified_snackbar_description", fallback: "Absence marked as not justified.")
          }
        }
      enum ConfirmShow {
        static let description = tr("Localizable", "clockingShiftDetails_noShow_confirmShow_description", fallback: "Once you undo this no show, this person’s hours can be approved and their performance rated.")
        enum Error {
          enum Snackbar {
            static let description = tr("Localizable", "clockingShiftDetails_noShow_confirmShow_error_snackbar_description", fallback: "We couldn't undo this no show.
Please try again.")
            }
          }
        enum Snackbar {
          static let description = tr("Localizable", "clockingShiftDetails_noShow_confirmShow_snackbar_description", fallback: "No show was undone and person notified.")
          static let title = tr("Localizable", "clockingShiftDetails_noShow_confirmShow_snackbar_title", fallback: "No show undone")
          }
        static let title = tr("Localizable", "clockingShiftDetails_noShow_confirmShow_title", fallback: "Undo this no show?")
        }
      enum Justified {
        static let description = tr("Localizable", "clockingShiftDetails_noShow_justified_description", fallback: "Sudden illness, emergency or other suitable reason provided.")
        static let title = tr("Localizable", "clockingShiftDetails_noShow_justified_title", fallback: "Justified")
        }
      enum NotJustified {
        static let description = tr("Localizable", "clockingShiftDetails_noShow_notJustified_description", fallback: "Did not notify me or provide a suitable reason.")
        static let title = tr("Localizable", "clockingShiftDetails_noShow_notJustified_title", fallback: "Not justified")
        }
      enum Options {
        static let description = tr("Localizable", "clockingShiftDetails_noShow_options_description", fallback: "Select if this no show was justified or not.")
        static let title = tr("Localizable", "clockingShiftDetails_noShow_options_title", fallback: "Type of absence (optional)")
        }
      enum Reason {
        static func notifiedInAdvance(_ p0: String) -> String {
            tr("Localizable", "clockingShiftDetails_noShow_reason_notifiedInAdvance", p0, fallback: "Notified %@ in advance")
        }
        static func title(_ p0: String) -> String {
            tr("Localizable", "clockingShiftDetails_noShow_reason_title", p0, fallback: "%@ informed about the absence")
        }
        }
      static let save = tr("Localizable", "clockingShiftDetails_noShow_save", fallback: "Save")
      enum Toggle {
        static let title = tr("Localizable", "clockingShiftDetails_noShow_toggle_title", fallback: "No show")
        }
      }
    enum NoShowConfirmationSheet {
      static let confirm = tr("Localizable", "clockingShiftDetails_noShowConfirmationSheet_confirm", fallback: "Yes, confirm")
      enum Justified {
        static let description = tr("Localizable", "clockingShiftDetails_noShowConfirmationSheet_justified_description", fallback: "Once you confirm this no show as being justified, this person will be notified.")
        static let title = tr("Localizable", "clockingShiftDetails_noShowConfirmationSheet_justified_title", fallback: "Confirm no show as being justified? ")
        }
      enum NotJustified {
        static let description = tr("Localizable", "clockingShiftDetails_noShowConfirmationSheet_notJustified_description", fallback: "Once you confirm this no show as not justified, this person will be notified.")
        static let title = tr("Localizable", "clockingShiftDetails_noShowConfirmationSheet_notJustified_title", fallback: "Confirm no show as not justified?")
        }
      enum TurnOff {
        static let button = tr("Localizable", "clockingShiftDetails_noShowConfirmationSheet_turnOff_button", fallback: "Undo no show")
        }
      enum TurnOn {
        static let button = tr("Localizable", "clockingShiftDetails_noShowConfirmationSheet_turnOn_button", fallback: "Confirm no show")
        }
      }
    static let openHistory = tr("Localizable", "clockingShiftDetails_openHistory", fallback: "View")
    enum OverlapError {
      static let description = tr("Localizable", "clockingShiftDetails_overlapError_description", fallback: "These hours clash with an existing clocking from another shift and cannot be saved.")
      static let title = tr("Localizable", "clockingShiftDetails_overlapError_title", fallback: "Clash with existing clocking")
      }
    enum Performance {
      static let subtitle = tr("Localizable", "clockingShiftDetails_performance_subtitle", fallback: "Rate this person’s work")
      static let title = tr("Localizable", "clockingShiftDetails_performance_title", fallback: "Performance")
      }
    enum Person {
      enum Notified {
        static func feedback(_ p0: String) -> String {
            tr("Localizable", "clockingShiftDetails_person_notified_feedback", p0, fallback: "Absence marked as %@.")
        }
        }
      }
    enum Punch {
      enum Hours {
        enum Updated {
          enum Snackbar {
            static let description = tr("Localizable", "clockingShiftDetails_punch_hours_updated_snackbar_description", fallback: "We’ve saved your changes")
            static let title = tr("Localizable", "clockingShiftDetails_punch_hours_updated_snackbar_title", fallback: "Clocking successfully updated")
            }
          }
        }
      }
    static func roundedHours(_ p0: String, _ p1: String) -> String {
        tr("Localizable", "clockingShiftDetails_roundedHours", p0, p1, fallback: "Times rounded, was %@ - %@")
    }
    enum RoundedHours {
      enum Single {
        static func data(_ p0: String) -> String {
            tr("Localizable", "clockingShiftDetails_roundedHours_single_data", p0, fallback: "Times rounded, was %@")
        }
        }
      }
    enum SaveSuccess {
      static let description = tr("Localizable", "clockingShiftDetails_saveSuccess_description", fallback: "Changes have been saved succesfully.")
      static let title = tr("Localizable", "clockingShiftDetails_saveSuccess_title", fallback: "Changes saved")
      }
    static let selectAll = tr("Localizable", "clockingShiftDetails_selectAll", fallback: "Select all")
    static func title(_ localized_format_key: Int) -> String {
        tr("Plurals", "clockingShiftDetails_title", localized_format_key, fallback: "%1$d people")
    }
    static let unselectAll = tr("Localizable", "clockingShiftDetails_unselectAll", fallback: "Unselect all")
    enum Worker {
      static let absent = tr("Localizable", "clockingShiftDetails_worker_absent", fallback: "No clocking")
      static let hoursApproved = tr("Localizable", "clockingShiftDetails_worker_hoursApproved", fallback: "Hours approved")
      static let missingFinish = tr("Localizable", "clockingShiftDetails_worker_missingFinish", fallback: "Incomplete clocking")
      static let onSite = tr("Localizable", "clockingShiftDetails_worker_onSite", fallback: "Working")
      static let worked = tr("Localizable", "clockingShiftDetails_worker_worked", fallback: "Worked")
      }
    enum WorkerRating {
      static let description = tr("Localizable", "clockingShiftDetails_workerRating_description", fallback: "Recognize this person’s work with a star rating. ")
      enum SaveButton {
        static let title = tr("Localizable", "clockingShiftDetails_workerRating_saveButton_title", fallback: "Save rating")
        }
      enum SaveSuccess {
        static let description = tr("Localizable", "clockingShiftDetails_workerRating_saveSuccess_description", fallback: "We’ve saved your changes.")
        static let title = tr("Localizable", "clockingShiftDetails_workerRating_saveSuccess_title", fallback: "Rating successfully updated")
        }
      static let title = tr("Localizable", "clockingShiftDetails_workerRating_title", fallback: "Rate their performance")
      enum UpdateButton {
        static let title = tr("Localizable", "clockingShiftDetails_workerRating_updateButton_title", fallback: "Update rating")
        }
      }
    enum WorkersList {
      static let attendance = tr("Localizable", "clockingShiftDetails_workersList_attendance", fallback: "Attendance")
      }
    }
  enum ClockingShifts {
    enum Description {
      enum Approved {
        static let status = tr("Localizable", "clockingShifts_description_approved_status", fallback: "Review completed")
        }
      enum Ended {
        static let status = tr("Localizable", "clockingShifts_description_ended_status", fallback: "Attended")
        }
      enum Live {
        static let status = tr("Localizable", "clockingShifts_description_live_status", fallback: "On site")
        }
      }
    enum Hours {
      enum Approved {
        static let feedback = tr("Localizable", "clockingShifts_hours_approved_feedback", fallback: "Hours have been approved")
        }
      enum Rejected {
        static let feedback = tr("Localizable", "clockingShifts_hours_rejected_feedback", fallback: "Hours have been rejected")
        }
      }
    enum Worker {
      enum Notified {
        static let feedback = tr("Localizable", "clockingShifts_worker_notified_feedback", fallback: "We’ve notified this person.")
        }
      }
    enum Workers {
      enum Notified {
        static let feedback = tr("Localizable", "clockingShifts_workers_notified_feedback", fallback: "Those people have been notified.")
        }
      }
    }
  enum Clockingdetail {
    enum Body {
      static let swipe = tr("Localizable", "clockingdetail_body_swipe", fallback: "Move between clockings by swiping left or right.")
      }
    enum Break {
      enum Bottomsheet {
        enum Button {
          static let addbreak = tr("Localizable", "clockingdetail_break_bottomsheet_button_addbreak", fallback: "Add another break")
          static let cancel = tr("Localizable", "clockingdetail_break_bottomsheet_button_cancel", fallback: "Cancel")
          static let update = tr("Localizable", "clockingdetail_break_bottomsheet_button_update", fallback: "Update")
          }
        enum Infohint {
          static let deductedbreak = tr("Localizable", "clockingdetail_break_bottomsheet_infohint_deductedbreak", fallback: "This break deduction was automatically applied for this workplace. To change it, please <b>contact your Job&Talent account manager.</b>")
          }
        enum Subtitle {
          static let totalhours = tr("Localizable", "clockingdetail_break_bottomsheet_subtitle_totalhours", fallback: "Total break time")
          }
        enum Title {
          static let break = tr("Localizable", "clockingdetail_break_bottomsheet_title_break", fallback: "Break ")
          }
        }
      enum Hint {
        static let longBreak = tr("Localizable", "clockingdetail_break_hint_longBreak", fallback: "The total break time is longer than 2h. ")
        }
      }
    enum Button {
      enum Title {
        static let gotit = tr("Localizable", "clockingdetail_button_title_gotit", fallback: "Got it")
        }
      }
    enum Geoattendance {
      enum Attendancecard {
        enum Customhint {
          static let notavailable = tr("Localizable", "clockingdetail_geoattendance_attendancecard_customhint_notavailable", fallback: "Location not available. Why?")
          static let workeronsite = tr("Localizable", "clockingdetail_geoattendance_attendancecard_customhint_workeronsite", fallback: "Confirmed on site with geolocation")
          static let workerwaspresent = tr("Localizable", "clockingdetail_geoattendance_attendancecard_customhint_workerwaspresent", fallback: "Confirmed on site with geolocation")
          }
        }
      enum Bottomsheet {
        enum Title {
          static let notavailable = tr("Localizable", "clockingdetail_geoattendance_bottomsheet_title_notavailable", fallback: "Geolocation not available")
          }
        enum Warninghint {
          static let noshowonsite = tr("Localizable", "clockingdetail_geoattendance_bottomsheet_warninghint_noshowonsite", fallback: "Geolocation shows that this person was on site for this shift. Be certain before you confirm.")
          static let notavailable = tr("Localizable", "clockingdetail_geoattendance_bottomsheet_warninghint_notavailable", fallback: "This person may not have geolocation enabled on their device, or the clocking may have occurred off site.")
          }
        }
      }
    enum Hoursbreakdown {
      enum Attcard {
        enum Body {
          static let breakdown = tr("Localizable", "clockingdetail_hoursbreakdown_attcard_body_breakdown", fallback: "Breakdown")
          static let breakdownnotavailable = tr("Localizable", "clockingdetail_hoursbreakdown_attcard_body_breakdownnotavailable", fallback: "Breakdown not available. ")
          static let classifyhours = tr("Localizable", "clockingdetail_hoursbreakdown_attcard_body_classifyhours", fallback: "How we classify hours")
          static let why = tr("Localizable", "clockingdetail_hoursbreakdown_attcard_body_why", fallback: "Why?")
          }
        enum Dangerhint {
          static let loadingerror = tr("Localizable", "clockingdetail_hoursbreakdown_attcard_dangerhint_loadingerror", fallback: "Sorry, we could not load the data. ")
          static let retry = tr("Localizable", "clockingdetail_hoursbreakdown_attcard_dangerhint_retry", fallback: " Retry")
          }
        enum Infohint {
          static let processing = tr("Localizable", "clockingdetail_hoursbreakdown_attcard_infohint_processing", fallback: "This may take a moment to break down the hours.")
          static let saveorapprove = tr("Localizable", "clockingdetail_hoursbreakdown_attcard_infohint_saveorapprove", fallback: "Save or approve these hours in order to see the breakdown.")
          }
        }
      enum Bottomsheet {
        enum Body {
          static let missinghours = tr("Localizable", "clockingdetail_hoursbreakdown_bottomsheet_body_missinghours", fallback: "By adding your hour types, you can pay people through the app and give better guidance about their hours breakdown. 

Contact your Job&Talent account manager to add your hour types. ")
          }
        enum Hourtypes {
          static let configured = tr("Localizable", "clockingdetail_hoursbreakdown_bottomsheet_hourtypes_configured", fallback: "Configured")
          static func dayovertime(_ p0: Int) -> String {
              tr("Localizable", "clockingdetail_hoursbreakdown_bottomsheet_hourtypes_dayovertime", p0, fallback: "More than %dh per day")
          }
          static let overtime = tr("Localizable", "clockingdetail_hoursbreakdown_bottomsheet_hourtypes_overtime", fallback: "Overtime")
          static func weekovertime(_ p0: Int) -> String {
              tr("Localizable", "clockingdetail_hoursbreakdown_bottomsheet_hourtypes_weekovertime", p0, fallback: "More than %dh per week")
          }
          }
        enum Textbutton {
          static let addmissinghours = tr("Localizable", "clockingdetail_hoursbreakdown_bottomsheet_textbutton_addmissinghours", fallback: "Add missing hour types")
          }
        enum Title {
          static let hourtypes = tr("Localizable", "clockingdetail_hoursbreakdown_bottomsheet_title_hourtypes", fallback: "Hour types")
          static let missinghours = tr("Localizable", "clockingdetail_hoursbreakdown_bottomsheet_title_missinghours", fallback: "Your hour types are missing")
          }
        }
      }
    enum Rating {
      enum Bottomsheet {
        enum Bodytext {
          static let leave = tr("Localizable", "clockingdetail_rating_bottomsheet_bodytext_leave", fallback: "If you leave, your feedback won’t be shared with this person. ")
          }
        enum Primarybutton {
          static let shareandleave = tr("Localizable", "clockingdetail_rating_bottomsheet_primarybutton_shareandleave", fallback: "Continue editing")
          }
        enum Secondarybutton {
          static let leave = tr("Localizable", "clockingdetail_rating_bottomsheet_secondarybutton_leave", fallback: "Yes, leave now")
          }
        enum Title {
          static let leave = tr("Localizable", "clockingdetail_rating_bottomsheet_title_leave", fallback: "Do you want to leave? ")
          }
        }
      enum Performancecard {
        enum Bodytext {
          static let feedback = tr("Localizable", "clockingdetail_rating_performancecard_bodytext_feedback", fallback: "How can this person improve?")
          static let highlight = tr("Localizable", "clockingdetail_rating_performancecard_bodytext_highlight", fallback: "What did they do well?")
          static let optional = tr("Localizable", "clockingdetail_rating_performancecard_bodytext_optional", fallback: "(optional) ")
          static let sharefeedback = tr("Localizable", "clockingdetail_rating_performancecard_bodytext_sharefeedback", fallback: "We’ll share this feedback with them.")
          }
        enum Bottomsheet {
          static let feedbackinfo = tr("Localizable", "clockingdetail_rating_performancecard_bottomsheet_feedbackinfo", fallback: "You can also provide feedback to help them understand what to improve or continue doing well.")
          }
        enum Button {
          static let share = tr("Localizable", "clockingdetail_rating_performancecard_button_share", fallback: "Share feedback")
          }
        enum Snackbar {
          static let feedbackkosubtitle = tr("Localizable", "clockingdetail_rating_performancecard_snackbar_feedbackkosubtitle", fallback: "Something happend and we couldn’t save your feedback. Try again. ")
          static let feedbackkotitle = tr("Localizable", "clockingdetail_rating_performancecard_snackbar_feedbackkotitle", fallback: "Feedback wasn’t saved")
          static let feedbackoksubtitle = tr("Localizable", "clockingdetail_rating_performancecard_snackbar_feedbackoksubtitle", fallback: "We’ve shared the feedback with this person. ")
          static let feedbackoktitle = tr("Localizable", "clockingdetail_rating_performancecard_snackbar_feedbackoktitle", fallback: "Feedback saved")
          static let tagskosubtitle = tr("Localizable", "clockingdetail_rating_performancecard_snackbar_tagskosubtitle", fallback: "Please try to rate this person again. ")
          static let tagskotitle = tr("Localizable", "clockingdetail_rating_performancecard_snackbar_tagskotitle", fallback: "Something went wrong")
          }
        enum Textfield {
          static let comment = tr("Localizable", "clockingdetail_rating_performancecard_textfield_comment", fallback: "Leave a comment...")
          static let helper = tr("Localizable", "clockingdetail_rating_performancecard_textfield_helper", fallback: "20/120 characters")
          static let label = tr("Localizable", "clockingdetail_rating_performancecard_textfield_label", fallback: "Comment")
          }
        }
      }
    enum Textfield {
      static let missingfinish = tr("Localizable", "clockingdetail_textfield_missingfinish", fallback: "Missing finish")
      static let missingstartandfinish = tr("Localizable", "clockingdetail_textfield_missingstartandfinish", fallback: "Missing start and finish")
      }
    enum Title {
      static let swipe = tr("Localizable", "clockingdetail_title_swipe", fallback: "Swipe to show more")
      }
    }
  enum Common {
    enum Account {
      enum Setup {
        enum Error {
          static let description = tr("Localizable", "common_account_setup_error_description", fallback: "Please contact businessapp@jobandtalent.com to let us know. We'll get it fixed as soon as possible.")
          static let title = tr("Localizable", "common_account_setup_error_title", fallback: "Account setup error")
          }
        }
      }
    static let all = tr("Localizable", "common_all", fallback: "All")
    static let assign = tr("Localizable", "common_assign", fallback: "Assign")
    static let cancel = tr("Localizable", "common_cancel", fallback: "Cancel")
    static let clear = tr("Localizable", "common_clear", fallback: "Clear")
    static let close = tr("Localizable", "common_close", fallback: "Close")
    static let continue = tr("Localizable", "common_continue", fallback: "Continue")
    static let copied = tr("Localizable", "common_copied", fallback: "Copied")
    static let date = tr("Localizable", "common_date", fallback: "Shift date")
    enum DatePicker {
      static let day = tr("Localizable", "common_datePicker_day", fallback: "Day")
      static let month = tr("Localizable", "common_datePicker_month", fallback: "Month")
      static let year = tr("Localizable", "common_datePicker_year", fallback: "Year")
      }
    static let day = tr("Localizable", "common_day", fallback: "day")
    static func days(_ localized_format_key: Int) -> String {
        tr("Plurals", "common_days", localized_format_key, fallback: "%d days")
    }
    static let deactivated = tr("Localizable", "common_deactivated", fallback: "Deactivated")
    static let done = tr("Localizable", "common_done", fallback: "Done")
    enum Duration {
      static func hours(_ p0: String) -> String {
          tr("Localizable", "common_duration_hours", p0, fallback: "%sh")
      }
      enum Hours {
        enum And {
          static func minutes(_ p0: Int, _ p1: Int) -> String {
              tr("Localizable", "common_duration_hours_and_minutes", p0, p1, fallback: "%1$dh %2$dm")
          }
          }
        }
      static func minutes(_ p0: String) -> String {
          tr("Localizable", "common_duration_minutes", p0, fallback: "%sm")
      }
      }
    enum Error {
      enum Action {
        static let title = tr("Localizable", "common_error_action_title", fallback: "Try again")
        }
      enum Cannot {
        enum Save {
          static let changes = tr("Localizable", "common_error_cannot_save_changes", fallback: "We’re sorry, we couldn’t save your changes. Please try again.")
          }
        }
      enum Generic {
        static let description = tr("Localizable", "common_error_generic_description", fallback: "We’re sorry, we could not load this content. Please try again.")
        static let title = tr("Localizable", "common_error_generic_title", fallback: "Oops, something went wrong")
        }
      enum Network {
        static let description = tr("Localizable", "common_error_network_description", fallback: "Please check your connection and try again")
        static let title = tr("Localizable", "common_error_network_title", fallback: "There was a network error ")
        }
      }
    enum Field {
      static let optional = tr("Localizable", "common_field_optional", fallback: "Optional")
      }
    static let from = tr("Localizable", "common_from", fallback: "From")
    static let gotit = tr("Localizable", "common_gotit", fallback: "Got it")
    static func hours(_ localized_format_key: Int) -> String {
        tr("Plurals", "common_hours", localized_format_key, fallback: "%d hours")
    }
    enum Leave {
      static let confirm = tr("Localizable", "common_leave_confirm", fallback: "Leave")
      static let description = tr("Localizable", "common_leave_description", fallback: "If you leave, your changes won’t be saved. ")
      static let title = tr("Localizable", "common_leave_title", fallback: "Do you want to leave?")
      }
    static let max = tr("Localizable", "common_max", fallback: "max")
    static let min = tr("Localizable", "common_min", fallback: "min")
    static func mins(_ localized_format_key: Int) -> String {
        tr("Plurals", "common_mins", localized_format_key, fallback: "%d mins")
    }
    static func minutes(_ localized_format_key: Int) -> String {
        tr("Plurals", "common_minutes", localized_format_key, fallback: "%d minutes")
    }
    static let never = tr("Localizable", "common_never", fallback: "Never")
    static let no = tr("Localizable", "common_no", fallback: "No")
    static let noResults = tr("Localizable", "common_noResults", fallback: "No results")
    static let of = tr("Localizable", "common_of", fallback: "of")
    static let on = tr("Localizable", "common_on", fallback: "On")
    enum Payable {
      enum Time {
        static func hours(_ p0: String) -> String {
            tr("Localizable", "common_payable_time_hours", p0, fallback: "%s h")
        }
        enum Hours {
          static func minutes(_ p0: Int, _ p1: Int) -> String {
              tr("Localizable", "common_payable_time_hours_minutes", p0, p1, fallback: "%1$d h %2$d min")
          }
          }
        static func minutes(_ p0: String) -> String {
            tr("Localizable", "common_payable_time_minutes", p0, fallback: "%s min")
        }
        }
      }
    static let reload = tr("Localizable", "common_reload", fallback: "Reload")
    static let save = tr("Localizable", "common_save", fallback: "Save")
    static let search = tr("Localizable", "common_search", fallback: "Search")
    enum Search {
      static func noResult(_ p0: String) -> String {
          tr("Localizable", "common_search_noResult", p0, fallback: "No results for %@")
      }
      enum NoResult {
        static let description = tr("Localizable", "common_search_noResult_description", fallback: "Try writing the name differently. If no results, the name may not exist.")
        }
      }
    static let select = tr("Localizable", "common_select", fallback: "Select")
    static let selectall = tr("Localizable", "common_selectall", fallback: "Select all")
    static let send = tr("Localizable", "common_send", fallback: "Send")
    static let shift = tr("Localizable", "common_shift", fallback: "shift")
    enum Snackbar {
      enum Error {
        enum TooManyRequests {
          static let subtitle = tr("Localizable", "common_snackbar_error_tooManyRequests_subtitle", fallback: "Please try again in a few minutes.")
          static let title = tr("Localizable", "common_snackbar_error_tooManyRequests_title", fallback: "Too many requests")
          }
        }
      }
    enum Text {
      enum Error {
        static let tooManyRequests = tr("Localizable", "common_text_error_tooManyRequests", fallback: "Too many requests. Please try again in a few minutes.")
        }
      }
    enum TextField {
      static func charactersCount(_ p0: Int, _ p1: Int) -> String {
          tr("Localizable", "common_textField_charactersCount", p0, p1, fallback: "%1$d/%2$d characters")
      }
      }
    static let to = tr("Localizable", "common_to", fallback: "to")
    static let tomorrow = tr("Localizable", "common_tomorrow", fallback: "Tomorrow")
    static let tryRemovingFilters = tr("Localizable", "common_tryRemovingFilters", fallback: "Try adjusting or removing your filters to get more results.")
    static let until = tr("Localizable", "common_until", fallback: "Until")
    static let why = tr("Localizable", "common_why", fallback: "Why?")
    static let yes = tr("Localizable", "common_yes", fallback: "Yes")
    static let yesterday = tr("Localizable", "common_yesterday", fallback: "Yesterday")
    static let you = tr("Localizable", "common_you", fallback: "you")
    }
  enum ConfirmClockings {
    static let approveButton = tr("Localizable", "confirmClockings_approveButton", fallback: "Yes, approve hours")
    static let content = tr("Localizable", "confirmClockings_content", fallback: "Confirm that these details are correct before approving hours.")
    static let header = tr("Localizable", "confirmClockings_header", fallback: "Approve these hours?")
    static let people = tr("Localizable", "confirmClockings_people", fallback: "People")
    static let timeWorked = tr("Localizable", "confirmClockings_timeWorked", fallback: "Time worked")
    }
  enum CreateShift {
    enum ActionButton {
      static let title = tr("Localizable", "createShift_actionButton_title", fallback: "Start")
      }
    enum AssignWorkerActionButton {
      static let prefix = tr("Localizable", "createShift_assignWorkerActionButton_prefix", fallback: "Assigned")
      }
    enum AssignWorkers {
      enum DescriptionPrefix {
        static let text = tr("Localizable", "createShift_assignWorkers_descriptionPrefix_text", fallback: "People assigned")
        }
      enum NeedMoreWorker {
        static let text = tr("Localizable", "createShift_assignWorkers_needMoreWorker_text", fallback: "It looks like you do not have enough available and qualified people for this shift. Please contact your J&T Account Manager if you need assistance.")
        }
      enum ReturnShiftlist {
        static let text = tr("Localizable", "createShift_assignWorkers_returnShiftlist_text", fallback: "Back to shift list")
        }
      enum ShiftSaved {
        static let description = tr("Localizable", "createShift_assignWorkers_shiftSaved_description", fallback: "Your shift has been saved but not published. Remember to publish it to notify everyone you’ve assigned about this shift.")
        static let title = tr("Localizable", "createShift_assignWorkers_shiftSaved_title", fallback: "Shift saved")
        }
      enum ShiftSeriesSaved {
        static let description = tr("Localizable", "createShift_assignWorkers_shiftSeriesSaved_description", fallback: "Your shifts have been saved but not published. Remember to publish them to notify everyone you’ve assigned about these shifts.")
        }
      static let text = tr("Localizable", "createShift_assignWorkers_text", fallback: "Assign work and notify them")
      }
    enum CommonError {
      static let message = tr("Localizable", "createShift_commonError_message", fallback: "We’re sorry, it looks like there was an issue at our end. Please try again.")
      static let title = tr("Localizable", "createShift_commonError_title", fallback: "An error has occurred")
      }
    enum ConfirmDismiss {
      static let buttonTitle = tr("Localizable", "createShift_confirmDismiss_buttonTitle", fallback: "Yes, discard")
      static let message = tr("Localizable", "createShift_confirmDismiss_message", fallback: "If you exit, all data entered for this shift will be lost.")
      static let title = tr("Localizable", "createShift_confirmDismiss_title", fallback: "Discard shift?")
      }
    enum ContinueToPeople {
      static let buton = tr("Localizable", "createShift_continueToPeople_buton", fallback: "Continue to assign people")
      }
    enum DateAndTime {
      static let date = tr("Localizable", "createShift_dateAndTime_date", fallback: "Date")
      static let end = tr("Localizable", "createShift_dateAndTime_end", fallback: "End")
      static let finish = tr("Localizable", "createShift_dateAndTime_finish", fallback: "Finish")
      static let repeatShift = tr("Localizable", "createShift_dateAndTime_repeatShift", fallback: "Repeat this shift")
      static let start = tr("Localizable", "createShift_dateAndTime_start", fallback: "Start")
      static let title = tr("Localizable", "createShift_dateAndTime_title", fallback: "Date and time")
      static let totalHours = tr("Localizable", "createShift_dateAndTime_totalHours", fallback: "Total hours")
      }
    enum FirstRow {
      static let description = tr("Localizable", "createShift_firstRow_description", fallback: "Select times and dates")
      static let title = tr("Localizable", "createShift_firstRow_title", fallback: "Set up your shift")
      }
    enum Operation {
      enum In {
        enum Progress {
          enum Snackbar {
            static let description = tr("Localizable", "createShift_operation_in_progress_snackbar_description", fallback: "Remember to publish it to notify everyone that they’re working. ")
            static func title(_ localized_format_key: Int) -> String {
                tr("Plurals", "createShift_operation_in_progress_snackbar_title", localized_format_key, fallback: "%1$d shifts created")
            }
            }
          }
        }
      }
    enum People {
      static let title = tr("Localizable", "createShift_people_title", fallback: "People")
      }
    enum PeopleAssigned {
      static func label(_ p0: Int, _ p1: Int) -> String {
          tr("Localizable", "createShift_peopleAssigned_label", p0, p1, fallback: "Assigned %1$d/%2$d")
      }
      }
    enum PeopleRequired {
      static let label = tr("Localizable", "createShift_peopleRequired_label", fallback: "Required")
      }
    enum RepeatEvery {
      static func months(_ localized_format_key: Int) -> String {
          tr("Plurals", "createShift_repeatEvery_months", localized_format_key, fallback: "%1$d Months")
      }
      static func weeks(_ localized_format_key: Int) -> String {
          tr("Plurals", "createShift_repeatEvery_weeks", localized_format_key, fallback: "%1$d Weeks")
      }
      }
    enum RepeatEveryDialog {
      static let months = tr("Localizable", "createShift_repeatEveryDialog_months", fallback: "Months")
      static let title = tr("Localizable", "createShift_repeatEveryDialog_title", fallback: "Repeat every")
      static let weeks = tr("Localizable", "createShift_repeatEveryDialog_weeks", fallback: "Weeks")
      }
    enum RequestWorker {
      enum ShiftSaved {
        static let description = tr("Localizable", "createShift_requestWorker_shiftSaved_description", fallback: "Your shift has been saved without adding number of people needed. Remember to add people, assign work and then let them know.")
        }
      enum ShiftSeriesSaved {
        static let description = tr("Localizable", "createShift_requestWorker_shiftSeriesSaved_description", fallback: "Your shifts have been saved without adding the number of people needed. Remember to add people, assign work and then let them know.")
        }
      }
    enum RequestWorkerAllDepartments {
      static let text = tr("Localizable", "createShift_requestWorkerAllDepartments_text", fallback: "All departments")
      }
    enum RequestWorkerAllRoles {
      static let text = tr("Localizable", "createShift_requestWorkerAllRoles_text", fallback: "All roles")
      }
    enum RequestWorkerDepartment {
      static let text = tr("Localizable", "createShift_requestWorkerDepartment_text", fallback: "Department")
      }
    enum RequestWorkerNoDepartment {
      static let text = tr("Localizable", "createShift_requestWorkerNoDepartment_text", fallback: "No department")
      }
    enum RequestWorkerOptional {
      static let text = tr("Localizable", "createShift_requestWorkerOptional_text", fallback: "Optional")
      }
    enum RequestWorkerRole {
      static let text = tr("Localizable", "createShift_requestWorkerRole_text", fallback: "Role")
      }
    enum RequestWorkerSelectDepartment {
      static let text = tr("Localizable", "createShift_requestWorkerSelectDepartment_text", fallback: "Select department")
      }
    enum RequestWorkerShiftName {
      static let placeholder = tr("Localizable", "createShift_requestWorkerShiftName_placeholder", fallback: "Add the shift or role name")
      }
    enum RequestWorkersCountWarning {
      static let text = tr("Localizable", "createShift_requestWorkersCountWarning_text", fallback: "It looks like you haven’t added people to this shift.")
      }
    enum RequestWorkersPeopleRequired {
      static let text = tr("Localizable", "createShift_requestWorkersPeopleRequired_text", fallback: "People required")
      }
    enum RequestWorkersSaveButtonWithoutAdd {
      static let title = tr("Localizable", "createShift_requestWorkersSaveButtonWithoutAdd_title", fallback: "Save and exit")
      }
    enum RequestWorkersSaveButtonWithoutAssign {
      static let title = tr("Localizable", "createShift_requestWorkersSaveButtonWithoutAssign_title", fallback: "Save and exit")
      }
    enum SaveAndExit {
      static let button = tr("Localizable", "createShift_saveAndExit_button", fallback: "Save and exit")
      }
    enum SaveAssignedWorkers {
      static let text = tr("Localizable", "createShift_saveAssignedWorkers_text", fallback: "Save assigned people")
      }
    enum SecondRow {
      static let description = tr("Localizable", "createShift_secondRow_description", fallback: "Select the number of people needed and enter shift details visible to workers")
      static let title = tr("Localizable", "createShift_secondRow_title", fallback: "Enter shift details")
      }
    enum ShiftColor {
      static let title = tr("Localizable", "createShift_shiftColor_title", fallback: "Shift color")
      }
    enum ShiftColorSelection {
      static let actionButtonTitle = tr("Localizable", "createShift_shiftColorSelection_actionButtonTitle", fallback: "Apply")
      }
    enum ShiftDetails {
      static let title = tr("Localizable", "createShift_shiftDetails_title", fallback: "Shift details")
      }
    enum ShiftName {
      static let customTitle = tr("Localizable", "createShift_shiftName_customTitle", fallback: "Shift name")
      static let description = tr("Localizable", "createShift_shiftName_description", fallback: "Write a descriptive name. If left blank we will fill it with the role and department selected.")
      static let subtitle = tr("Localizable", "createShift_shiftName_subtitle", fallback: "Write a descriptive name. Consider including the role name for clarity. This information will be visible to workers.")
      static let title = tr("Localizable", "createShift_shiftName_title", fallback: "Shift name")
      }
    enum ShiftTimeframeDuration {
      static func text(_ p0: String) -> String {
          tr("Localizable", "createShift_shiftTimeframeDuration_text", p0, fallback: "%s shift")
      }
      enum Text {
        static func 2(_ p0: String) -> String {
            tr("Localizable", "createShift_shiftTimeframeDuration_text_2", p0, fallback: "%s")
        }
        }
      }
    enum ShiftTimeframeDurationNextDay {
      static func text(_ p0: String) -> String {
          tr("Localizable", "createShift_shiftTimeframeDurationNextDay_text", p0, fallback: "%s shift (+1 day)")
      }
      enum Text {
        static func 2(_ p0: String) -> String {
            tr("Localizable", "createShift_shiftTimeframeDurationNextDay_text_2", p0, fallback: "%s (+1 day)")
        }
        }
      }
    enum ShiftTimeframeRepeatOn {
      static let text = tr("Localizable", "createShift_shiftTimeframeRepeatOn_text", fallback: "Repeat on")
      }
    enum ShiftTimeframeRepeatPeriod {
      static let text = tr("Localizable", "createShift_shiftTimeframeRepeatPeriod_text", fallback: "Repeat every")
      }
    enum ShiftTimeframeRepeatSelection {
      static let text = tr("Localizable", "createShift_shiftTimeframeRepeatSelection_text", fallback: "Select the days when you want to repeat this shift")
      }
    enum ShiftTimeframeRepeatToggle {
      static let title = tr("Localizable", "createShift_shiftTimeframeRepeatToggle_title", fallback: "Repeat this shift")
      }
    enum ShiftTimeframeRepeatUntil {
      static let text = tr("Localizable", "createShift_shiftTimeframeRepeatUntil_text", fallback: "Repeat until")
      }
    enum Supervisor {
      static let label = tr("Localizable", "createShift_supervisor_label", fallback: "Supervisor")
      }
    enum ThirdRow {
      static let description = tr("Localizable", "createShift_thirdRow_description", fallback: "Confirm who will work and let them know")
      static let title = tr("Localizable", "createShift_thirdRow_title", fallback: "Assign work and notify")
      }
    static let title = tr("Localizable", "createShift_title", fallback: "New Shift")
    }
  enum DayDetails {
    static let attendedWorkersEmptyHint = tr("Localizable", "dayDetails_attendedWorkersEmptyHint", fallback: "People who attend will appear here after the shifts start.")
    enum BulkApproval {
      static func title(_ localized_format_key: Int) -> String {
          tr("Plurals", "dayDetails_bulkApproval_title", localized_format_key, fallback: "%d people selected")
      }
      }
    static let noShowWorkersEmptyHint = tr("Localizable", "dayDetails_noShowWorkersEmptyHint", fallback: "No shows will appear here if you have any after the shifts start.")
    }
  enum DeleteShiftConfirmation {
    static let positiveButtonLabel = tr("Localizable", "deleteShiftConfirmation_positiveButtonLabel", fallback: "Delete")
    static let title = tr("Localizable", "deleteShiftConfirmation_title", fallback: "What shift do you want to delete?")
    }
  enum DisplayRejectionReasons {
    static let commuteProblem = tr("Localizable", "displayRejectionReasons_commuteProblem", fallback: "Problem on my way to work")
    static let emergency = tr("Localizable", "displayRejectionReasons_emergency", fallback: "Emergency")
    static let medicalSupport = tr("Localizable", "displayRejectionReasons_medicalSupport", fallback: "Medical support for family")
    static let other = tr("Localizable", "displayRejectionReasons_other", fallback: "Other reason")
    static let schedule = tr("Localizable", "displayRejectionReasons_schedule", fallback: "Not my agreed schedule")
    static let sick = tr("Localizable", "displayRejectionReasons_sick", fallback: "Sick or unwell")
    }
  enum EditAssignment {
    enum Draft {
      enum Snackbar {
        static let description = tr("Localizable", "editAssignment_draft_snackbar_description", fallback: "The people assigned have been updated")
        }
      }
    enum Published {
      enum Snackbar {
        static let description = tr("Localizable", "editAssignment_published_snackbar_description", fallback: "Anyone newly assigned has been notified")
        }
      }
    enum Snackbar {
      static let title = tr("Localizable", "editAssignment_snackbar_title", fallback: "Assignment updated")
      }
    enum WorkerList {
      enum Snackbar {
        static let title = tr("Localizable", "editAssignment_workerList_snackbar_title", fallback: "Assignment updated")
        }
      }
    }
  enum EditProfile {
    enum ConfirmationDialog {
      static let subtitle = tr("Localizable", "editProfile_confirmationDialog_subtitle", fallback: "If you do not save, you’ll lose your changes.")
      static let title = tr("Localizable", "editProfile_confirmationDialog_title", fallback: "Leave without saving changes?")
      }
    static let dontSaveChanges = tr("Localizable", "editProfile_dontSaveChanges", fallback: "Do not save")
    static let saveChanges = tr("Localizable", "editProfile_saveChanges", fallback: "Save changes")
    static let saveErrorBody = tr("Localizable", "editProfile_saveErrorBody", fallback: "We could not save the changes. Please try again.")
    }
  enum EditShift {
    enum AssignPeople {
      enum Button {
        static let saveSelection = tr("Localizable", "editShift_assignPeople_button_saveSelection", fallback: "Save selection")
        }
      }
    enum Banner {
      static let publishedShift = tr("Localizable", "editShift_banner_publishedShift", fallback: "Shift changes will be visible to workers. Note that they'll be notified and have to confirm shifts again after any time or date changes.")
      }
    enum ChangesDialog {
      static let backToShiftDetail = tr("Localizable", "editShift_changesDialog_backToShiftDetail", fallback: "Back to shift detail")
      }
    enum ChangesPublishedDialog {
      static let description = tr("Localizable", "editShift_changesPublishedDialog_description", fallback: "Your shift has been published and the people you’ve assigned have been notified.")
      static let title = tr("Localizable", "editShift_changesPublishedDialog_title", fallback: "Shift published")
      }
    enum ChangesSavedDialog {
      static let description = tr("Localizable", "editShift_changesSavedDialog_description", fallback: "Your shift has been saved but not published. Remember to publish it to notify everyone that they’re working. ")
      static let title = tr("Localizable", "editShift_changesSavedDialog_title", fallback: "Shift saved")
      }
    enum ConfirmationModal {
      enum OtherFieldsEdited {
        static let title = tr("Localizable", "editShift_confirmationModal_otherFieldsEdited_title", fallback: "Edit upcoming shifts")
        }
      enum RepetitionPatternEdited {
        static let title = tr("Localizable", "editShift_confirmationModal_repetitionPatternEdited_title", fallback: "What do you want to edit?")
        }
      }
    enum ConfirmationModalOptions {
      static let allShiftInSeries = tr("Localizable", "editShift_confirmationModalOptions_allShiftInSeries", fallback: "This shift and all the upcoming shifts")
      static let currentShift = tr("Localizable", "editShift_confirmationModalOptions_currentShift", fallback: "Just this shift")
      static let restOfTheWeek = tr("Localizable", "editShift_confirmationModalOptions_restOfTheWeek", fallback: "This shift and the upcoming shifts for the week")
      }
    enum DateChange {
      static let tooltip = tr("Localizable", "editShift_dateChange_tooltip", fallback: "Please note that changes to the shift's date and time may affect the availability of the assigned workers")
      }
    enum DeleteDialog {
      static let cancelButton = tr("Localizable", "editShift_deleteDialog_cancelButton", fallback: "No, go back")
      static let confirmButton = tr("Localizable", "editShift_deleteDialog_confirmButton", fallback: "Yes, delete")
      static let description = tr("Localizable", "editShift_deleteDialog_description", fallback: "This shift will be permanently removed")
      enum Description {
        static let series = tr("Localizable", "editShift_deleteDialog_description_series", fallback: "These shifts will be permanently removed")
        }
      static let title = tr("Localizable", "editShift_deleteDialog_title", fallback: "Delete this shift?")
      enum Title {
        static let series = tr("Localizable", "editShift_deleteDialog_title_series", fallback: "Delete these shifts?")
        }
      }
    enum DeleteShift {
      static let text = tr("Localizable", "editShift_deleteShift_text", fallback: "Delete shift")
      }
    enum DeleteShiftSeries {
      static let text = tr("Localizable", "editShift_deleteShiftSeries_text", fallback: "Delete shift series")
      }
    enum DeleteSnackbar {
      static let description = tr("Localizable", "editShift_deleteSnackbar_description", fallback: "This shift has been deleted")
      static let title = tr("Localizable", "editShift_deleteSnackbar_title", fallback: "Shift deleted")
      }
    enum DiscardChangesDialog {
      static let cancelButton = tr("Localizable", "editShift_discardChangesDialog_cancelButton", fallback: "No, go back")
      static let confirmButton = tr("Localizable", "editShift_discardChangesDialog_confirmButton", fallback: "Yes, discard changes")
      static let description = tr("Localizable", "editShift_discardChangesDialog_description", fallback: "You are about to discard changes. Are you sure?")
      static let title = tr("Localizable", "editShift_discardChangesDialog_title", fallback: "Unsaved Changes")
      }
    enum Draft {
      enum Snackbar {
        static let description = tr("Localizable", "editShift_draft_snackbar_description", fallback: "Changes have been saved")
        }
      }
    enum InfoTab {
      static let title = tr("Localizable", "editShift_infoTab_title", fallback: "General info")
      }
    enum ManageWorkers {
      static let pastPublishedShiftMessage = tr("Localizable", "editShift_manageWorkers_pastPublishedShiftMessage", fallback: "When you add people to a past shift, we use the shift times as clockings.")
      }
    enum Operation {
      enum In {
        enum Progress {
          enum Snackbar {
            static let description = tr("Localizable", "editShift_operation_in_progress_snackbar_description", fallback: "Your shift is being updated")
            static let title = tr("Localizable", "editShift_operation_in_progress_snackbar_title", fallback: "Updating shift…")
            }
          }
        }
      }
    enum PeopleAssigned {
      static let title = tr("Localizable", "editShift_peopleAssigned_title", fallback: "People assigned")
      }
    enum PeopleTab {
      static func title(_ p0: Int, _ p1: Int) -> String {
          tr("Localizable", "editShift_peopleTab_title", p0, p1, fallback: "People (%1$d/%2$d)")
      }
      enum WorkersUnavailable {
        static let message = tr("Localizable", "editShift_peopleTab_workersUnavailable_message", fallback: "Some people might not be available for the new time and date selected.")
        }
      }
    enum PublishChangesDialog {
      static let cancelButton = tr("Localizable", "editShift_publishChangesDialog_cancelButton", fallback: "No, go back")
      static let confirmButton = tr("Localizable", "editShift_publishChangesDialog_confirmButton", fallback: "Yes, notify changes")
      static let description = tr("Localizable", "editShift_publishChangesDialog_description", fallback: "You are about to make changes on a published shift. This action could affect the availability of the assigned people. Do you still want to publish them?")
      static let title = tr("Localizable", "editShift_publishChangesDialog_title", fallback: "Publish changes?")
      }
    enum Published {
      enum Snackbar {
        static let description = tr("Localizable", "editShift_published_snackbar_description", fallback: "The people you’ve assigned to work have been notified")
        }
      }
    enum RequestPeopleRequired {
      static let text = tr("Localizable", "editShift_requestPeopleRequired_text", fallback: "People required")
      }
    enum RequestWorkerDepartment {
      static let text = tr("Localizable", "editShift_requestWorkerDepartment_text", fallback: "Department")
      }
    enum RequestWorkerRole {
      static let text = tr("Localizable", "editShift_requestWorkerRole_text", fallback: "Role")
      }
    enum SaveChanges {
      static let button = tr("Localizable", "editShift_saveChanges_button", fallback: "Save changes")
      }
    enum ShiftCustomName {
      static let title = tr("Localizable", "editShift_shiftCustomName_title", fallback: "Shift name")
      }
    enum ShiftDetailsSection {
      static let title = tr("Localizable", "editShift_shiftDetailsSection_title", fallback: "Shift details")
      }
    enum ShiftRepetitionSection {
      static let title = tr("Localizable", "editShift_shiftRepetitionSection_title", fallback: "Shift repetition")
      }
    enum Snackbar {
      static let title = tr("Localizable", "editShift_snackbar_title", fallback: "Shift updated")
      }
    static let title = tr("Localizable", "editShift_title", fallback: "Edit Shift")
    }
  enum Error {
    enum 401 {
      static let title = tr("Localizable", "error_401_title", fallback: "Authentication error!")
      }
    enum 422 {
      static let title = tr("Localizable", "error_422_title", fallback: "Unprocessable Entity!")
      }
    enum 500 {
      static let description = tr("Localizable", "error_500_description", fallback: "Something went wrong while loading this content. Please try again.")
      static let title = tr("Localizable", "error_500_title", fallback: "Oops!")
      }
    static let couldntloaddata = tr("Localizable", "error_couldntloaddata", fallback: "Sorry, we could not load the data.")
    static let malformedData = tr("Localizable", "error_malformedData", fallback: "Invalid data")
    static let missingResponseData = tr("Localizable", "error_missingResponseData", fallback: "Missing data")
    enum NoInternet {
      static let description = tr("Localizable", "error_noInternet_description", fallback: "Connection problem. Please check your connection and try again.")
      static let title = tr("Localizable", "error_noInternet_title", fallback: "Network error")
      }
    static let title = tr("Localizable", "error_title", fallback: "Error")
    enum Unknown {
      static let description = tr("Localizable", "error_unknown_description", fallback: "Something went wrong while loading this content. Please try again.")
      static let title = tr("Localizable", "error_unknown_title", fallback: "Unknown error occurred")
      }
    }
  enum Filter {
    enum Supervisor {
      static let all = tr("Localizable", "filter_supervisor_all", fallback: "All ")
      enum Bottomsheet {
        static let title = tr("Localizable", "filter_supervisor_bottomsheet_title", fallback: "Filters")
        enum Title {
          static func selected(_ localized_format_key: Int) -> String {
              tr("Plurals", "filter_supervisor_bottomsheet_title_selected", localized_format_key, fallback: "%d selected")
          }
          }
        }
      static let custom = tr("Localizable", "filter_supervisor_custom", fallback: "Custom")
      static let disclaimer = tr("Localizable", "filter_supervisor_disclaimer", fallback: "We'll apply this filter to the whole app")
      enum Title {
        static let supervisor = tr("Localizable", "filter_supervisor_title_supervisor", fallback: "Supervisor")
        }
      static let you = tr("Localizable", "filter_supervisor_you", fallback: "You")
      }
    }
  enum FilterShifts {
    enum ApplyAction {
      static let title = tr("Localizable", "filterShifts_applyAction_title", fallback: "Apply")
      }
    enum ClearAction {
      static let title = tr("Localizable", "filterShifts_clearAction_title", fallback: "Clear All")
      }
    enum ClearFilter {
      static let label = tr("Localizable", "filterShifts_clearFilter_label", fallback: "Clear filters")
      }
    enum DateSection {
      static let emptyLabel = tr("Localizable", "filterShifts_dateSection_emptyLabel", fallback: "Select date")
      static let title = tr("Localizable", "filterShifts_dateSection_title", fallback: "Dates")
      }
    enum DepartmentSection {
      static let title = tr("Localizable", "filterShifts_departmentSection_title", fallback: "Department")
      }
    enum NameSection {
      static let title = tr("Localizable", "filterShifts_nameSection_title", fallback: "Shift name")
      }
    enum NoSupervisor {
      static let label = tr("Localizable", "filterShifts_noSupervisor_label", fallback: "No supervisor assigned")
      }
    enum RolesSection {
      static let title = tr("Localizable", "filterShifts_rolesSection_title", fallback: "Roles")
      }
    enum ScheduleSection {
      static let defaultSelection = tr("Localizable", "filterShifts_scheduleSection_defaultSelection", fallback: "Select time")
      static let setSelection = tr("Localizable", "filterShifts_scheduleSection_setSelection", fallback: "Start - end time")
      static let title = tr("Localizable", "filterShifts_scheduleSection_title", fallback: "Schedule")
      }
    enum StatusSection {
      static let title = tr("Localizable", "filterShifts_statusSection_title", fallback: "Status")
      }
    enum SupervisorSection {
      static let defaultSelection = tr("Localizable", "filterShifts_supervisorSection_defaultSelection", fallback: "Select supervisor")
      static let title = tr("Localizable", "filterShifts_supervisorSection_title", fallback: "Supervisor")
      }
    enum Supervisors {
      static let title = tr("Localizable", "filterShifts_supervisors_title", fallback: "Filter by supervisor")
      }
    enum TimeSection {
      static let emptyLabel = tr("Localizable", "filterShifts_timeSection_emptyLabel", fallback: "Select time")
      static let title = tr("Localizable", "filterShifts_timeSection_title", fallback: "Start and end time")
      }
    static let title = tr("Localizable", "filterShifts_title", fallback: "Filters")
    enum WeekdaysSection {
      static let title = tr("Localizable", "filterShifts_weekdaysSection_title", fallback: "Days of the week")
      }
    }
  enum Force {
    enum Update {
      static let button = tr("Localizable", "force_update_button", fallback: "Update app")
      static let description = tr("Localizable", "force_update_description", fallback: "Job&Talent Business is not BETA anymore. Download the new version for the greatest experience.")
      static let title = tr("Localizable", "force_update_title", fallback: "Update the app")
      }
    }
  enum ForgotPassword {
    static let continueButton = tr("Localizable", "forgotPassword_continueButton", fallback: "Continue")
    static let emailField = tr("Localizable", "forgotPassword_emailField", fallback: "Email")
    static let emailFieldError = tr("Localizable", "forgotPassword_emailFieldError", fallback: "Please enter a valid email")
    static let subtitle = tr("Localizable", "forgotPassword_subtitle", fallback: "Tell us your email and we'll send you a link to reset your password.")
    static let title = tr("Localizable", "forgotPassword_title", fallback: "Reset password")
    }
  enum Hiring {
    enum Suggested {
      enum Empty {
        enum Placeholder {
          static let button = tr("Localizable", "hiring_suggested_empty_placeholder_button", fallback: "Hire other workers")
          }
        }
      enum Form {
        enum Char {
          static func limit(_ p0: Int) -> String {
              tr("Localizable", "hiring_suggested_form_char_limit", p0, fallback: "%d/250 characters")
          }
          }
        static let info = tr("Localizable", "hiring_suggested_form_info", fallback: "Additional information")
        enum Info {
          static let hint = tr("Localizable", "hiring_suggested_form_info_hint", fallback: "Add a comment for your Job&Talent account manager")
          }
        enum Optional {
          static let hint = tr("Localizable", "hiring_suggested_form_optional_hint", fallback: "Optional")
          }
        static let people = tr("Localizable", "hiring_suggested_form_people", fallback: "People")
        static let select = tr("Localizable", "hiring_suggested_form_select", fallback: "Select")
        enum Start {
          static let date = tr("Localizable", "hiring_suggested_form_start_date", fallback: "Start date")
          }
        static let title = tr("Localizable", "hiring_suggested_form_title", fallback: "Rehire past workers")
        }
      enum Tab {
        static let name = tr("Localizable", "hiring_suggested_tab_name", fallback: "Past workers")
        }
      }
    enum Vacancies {
      enum Tab {
        static let name = tr("Localizable", "hiring_vacancies_tab_name", fallback: "Other")
        }
      }
    }
  enum Insightstab {
    enum Hours {
      enum Body {
        static let nohourtypes = tr("Localizable", "insightstab_hours_body_nohourtypes", fallback: "Hour types not available.")
        }
      enum Bottomsheet {
        enum Body {
          static let hoursapproved = tr("Localizable", "insightstab_hours_bottomsheet_body_hoursapproved", fallback: "Total time a supervisor has verified and approved for payment.")
          static let hoursworked = tr("Localizable", "insightstab_hours_bottomsheet_body_hoursworked", fallback: "Total time someone has worked in a given period.")
          static let overtime = tr("Localizable", "insightstab_hours_bottomsheet_body_overtime", fallback: "Total time someone has worked beyond their contracted hours. Overtime is typically paid at a higher rate.")
          }
        enum Subtitle {
          static let hoursapproved = tr("Localizable", "insightstab_hours_bottomsheet_subtitle_hoursapproved", fallback: "Hours approved")
          static let hoursworked = tr("Localizable", "insightstab_hours_bottomsheet_subtitle_hoursworked", fallback: "Hours worked")
          static let overtime = tr("Localizable", "insightstab_hours_bottomsheet_subtitle_overtime", fallback: "Overtime")
          }
        enum Title {
          static let hours = tr("Localizable", "insightstab_hours_bottomsheet_title_hours", fallback: "Hours")
          }
        }
      enum Chip {
        static func previousmonth(_ p0: String) -> String {
            tr("Localizable", "insightstab_hours_chip_previousmonth", p0, fallback: "%@h previous month")
        }
        static let samepreviousmonth = tr("Localizable", "insightstab_hours_chip_samepreviousmonth", fallback: "Same as previous month")
        }
      enum Filterchip {
        enum Body {
          static func all(_ p0: String) -> String {
              tr("Localizable", "insightstab_hours_filterchip_body_all", p0, fallback: "All (%@)")
          }
          static func needsreview(_ p0: String) -> String {
              tr("Localizable", "insightstab_hours_filterchip_body_needsreview", p0, fallback: "Needs review (%@)")
          }
          static func readytoapprove(_ p0: String) -> String {
              tr("Localizable", "insightstab_hours_filterchip_body_readytoapprove", p0, fallback: "Ready to approve (%@)")
          }
          }
        }
      enum Header {
        enum Tab {
          static let month = tr("Localizable", "insightstab_hours_header_tab_month", fallback: "Month")
          static let week = tr("Localizable", "insightstab_hours_header_tab_week", fallback: "Week")
          }
        enum Title {
          static let hours = tr("Localizable", "insightstab_hours_header_title_hours", fallback: "Hours")
          static func overtime(_ p0: String) -> String {
              tr("Localizable", "insightstab_hours_header_title_overtime", p0, fallback: "Overtime (%@)")
          }
          static let pendingtoapprove = tr("Localizable", "insightstab_hours_header_title_pendingtoapprove", fallback: "Pending to approve")
          }
        }
      enum Hint {
        enum Body {
          static let hoursapprovedthismonth = tr("Localizable", "insightstab_hours_hint_body_hoursapprovedthismonth", fallback: "All hours <b>approved</b> for this month.")
          static let hoursapprovedthisweek = tr("Localizable", "insightstab_hours_hint_body_hoursapprovedthisweek", fallback: "All hours <b>approved</b> for this week.")
          }
        }
      enum Link {
        static let nohourtypes = tr("Localizable", "insightstab_hours_link_nohourtypes", fallback: "Why?")
        }
      enum Snackbar {
        static let errordescription = tr("Localizable", "insightstab_hours_snackbar_errordescription", fallback: "We're sorry, we couldn't save your changes. Please try again.")
        static let errortitle = tr("Localizable", "insightstab_hours_snackbar_errortitle", fallback: "Something went wrong")
        }
      enum Title {
        static let hoursworked = tr("Localizable", "insightstab_hours_title_hoursworked", fallback: "Hours worked")
        static let hourtypes = tr("Localizable", "insightstab_hours_title_hourtypes", fallback: "Hour types")
        static func overtime(_ p0: String) -> String {
            tr("Localizable", "insightstab_hours_title_overtime", p0, fallback: "Overtime (%@)")
        }
        static func pending(_ p0: String) -> String {
            tr("Localizable", "insightstab_hours_title_pending", p0, fallback: "Pending to approve (%@)")
        }
        }
      enum Tooltip {
        enum Body {
          static let approved = tr("Localizable", "insightstab_hours_tooltip_body_approved", fallback: "Approved")
          static let worked = tr("Localizable", "insightstab_hours_tooltip_body_worked", fallback: "Worked")
          }
        }
      enum Type {
        enum Bank {
          static let holiday = tr("Localizable", "insightstab_hours_type_bank_holiday", fallback: "Holiday")
          enum Holiday {
            static let night = tr("Localizable", "insightstab_hours_type_bank_holiday_night", fallback: "Bank holiday night")
            enum Night {
              static let overtime = tr("Localizable", "insightstab_hours_type_bank_holiday_night_overtime", fallback: "Holiday night overtime")
              static let supplementary = tr("Localizable", "insightstab_hours_type_bank_holiday_night_supplementary", fallback: "Holiday night supplementary")
              }
            static let overtime = tr("Localizable", "insightstab_hours_type_bank_holiday_overtime", fallback: "Bank holiday overtime")
            static let supplementary = tr("Localizable", "insightstab_hours_type_bank_holiday_supplementary", fallback: "Bank holiday supplementary")
            }
          }
        static let break = tr("Localizable", "insightstab_hours_type_break", fallback: "Break time deducted")
        static let extra = tr("Localizable", "insightstab_hours_type_extra", fallback: "Overtime")
        enum Extra {
          static let holiday = tr("Localizable", "insightstab_hours_type_extra_holiday", fallback: "OT holiday")
          enum Holiday {
            static let night = tr("Localizable", "insightstab_hours_type_extra_holiday_night", fallback: "OT holiday night")
            }
          enum Night {
            static let sunday = tr("Localizable", "insightstab_hours_type_extra_night_sunday", fallback: "OT Sunday night")
            }
          static let sunday = tr("Localizable", "insightstab_hours_type_extra_sunday", fallback: "OT Sunday")
          }
        enum Holiday {
          static let night = tr("Localizable", "insightstab_hours_type_holiday_night", fallback: "Holiday night")
          }
        static let night = tr("Localizable", "insightstab_hours_type_night", fallback: "Night")
        enum Night {
          static let overtime = tr("Localizable", "insightstab_hours_type_night_overtime", fallback: "Night overtime")
          enum Overtime {
            static let saturday = tr("Localizable", "insightstab_hours_type_night_overtime_saturday", fallback: "Night overtime Saturday")
            static let sunday = tr("Localizable", "insightstab_hours_type_night_overtime_sunday", fallback: "Night overtime Sunday")
            static let weekend = tr("Localizable", "insightstab_hours_type_night_overtime_weekend", fallback: "Night overtime weekend")
            }
          static let saturday = tr("Localizable", "insightstab_hours_type_night_saturday", fallback: "Night Saturday")
          enum Saturday {
            static let supplementary = tr("Localizable", "insightstab_hours_type_night_saturday_supplementary", fallback: "Night Saturday supplementary")
            }
          static let sunday = tr("Localizable", "insightstab_hours_type_night_sunday", fallback: "Night Sunday")
          enum Sunday {
            static let supplementary = tr("Localizable", "insightstab_hours_type_night_sunday_supplementary", fallback: "Night Sunday supplementary")
            }
          static let supplementary = tr("Localizable", "insightstab_hours_type_night_supplementary", fallback: "Night supplementary")
          enum Supplementary {
            static let weekend = tr("Localizable", "insightstab_hours_type_night_supplementary_weekend", fallback: "Night supplementary weekend")
            }
          static let weekend = tr("Localizable", "insightstab_hours_type_night_weekend", fallback: "Night weekend")
          }
        static let normal = tr("Localizable", "insightstab_hours_type_normal", fallback: "Regular")
        static let other = tr("Localizable", "insightstab_hours_type_other", fallback: "Other")
        static let overtime = tr("Localizable", "insightstab_hours_type_overtime", fallback: "Overtime")
        enum Overtime {
          static let saturday = tr("Localizable", "insightstab_hours_type_overtime_saturday", fallback: "Overtime Saturday")
          static let sunday = tr("Localizable", "insightstab_hours_type_overtime_sunday", fallback: "Overtime Sunday")
          static let weekend = tr("Localizable", "insightstab_hours_type_overtime_weekend", fallback: "Overtime weekend")
          }
        static let saturday = tr("Localizable", "insightstab_hours_type_saturday", fallback: "Saturday")
        enum Saturday {
          static let supplementary = tr("Localizable", "insightstab_hours_type_saturday_supplementary", fallback: "Saturday supplementary")
          }
        static let sunday = tr("Localizable", "insightstab_hours_type_sunday", fallback: "Sunday")
        enum Sunday {
          static let supplementary = tr("Localizable", "insightstab_hours_type_sunday_supplementary", fallback: "Sunday supplementary")
          }
        static let supplementary = tr("Localizable", "insightstab_hours_type_supplementary", fallback: "Supplementary")
        enum Supplementary {
          static let weekend = tr("Localizable", "insightstab_hours_type_supplementary_weekend", fallback: "Supplement weekend")
          }
        static let unsocial = tr("Localizable", "insightstab_hours_type_unsocial", fallback: "Holiday")
        static let weekend = tr("Localizable", "insightstab_hours_type_weekend", fallback: "Weekend")
        }
      }
    enum Insightsdashboard {
      enum Body {
        enum Accessibility {
          static let assigned = tr("Localizable", "insightstab_insightsdashboard_body_accessibility_assigned", fallback: "Assigned")
          static let attendance = tr("Localizable", "insightstab_insightsdashboard_body_accessibility_attendance", fallback: "Attendance")
          static let week = tr("Localizable", "insightstab_insightsdashboard_body_accessibility_week", fallback: "Week")
          }
        }
      enum Chip {
        enum Body {
          static func hoursworked(_ p0: String) -> String {
              tr("Localizable", "insightstab_insightsdashboard_chip_body_hoursworked", p0, fallback: "Previous week was %@h")
          }
          static func lastweek(_ p0: String) -> String {
              tr("Localizable", "insightstab_insightsdashboard_chip_body_lastweek", p0, fallback: "Previous week was %@ ")
          }
          static let nodatalastweek = tr("Localizable", "insightstab_insightsdashboard_chip_body_nodatalastweek", fallback: "No data previous week")
          static let nodatapreviousweek = tr("Localizable", "insightstab_insightsdashboard_chip_body_nodatapreviousweek", fallback: "No data previous week")
          static let nodatathisweek = tr("Localizable", "insightstab_insightsdashboard_chip_body_nodatathisweek", fallback: "No data this week")
          static func previousweek(_ p0: String) -> String {
              tr("Localizable", "insightstab_insightsdashboard_chip_body_previousweek", p0, fallback: "Previous week was %@ ")
          }
          static let samelastweek = tr("Localizable", "insightstab_insightsdashboard_chip_body_samelastweek", fallback: "Same as previous week")
          static let samepreviousweek = tr("Localizable", "insightstab_insightsdashboard_chip_body_samepreviousweek", fallback: "Same as previous week")
          }
        }
      enum Customcard {
        enum Body {
          static let attlegend = tr("Localizable", "insightstab_insightsdashboard_customcard_body_attlegend", fallback: "Attendance rate")
          static func hours(_ p0: String) -> String {
              tr("Localizable", "insightstab_insightsdashboard_customcard_body_hours", p0, fallback: "%@ approved")
          }
          static let hoursapprovedlegend = tr("Localizable", "insightstab_insightsdashboard_customcard_body_hoursapprovedlegend", fallback: "Hours approved")
          static let hoursworkedlegend = tr("Localizable", "insightstab_insightsdashboard_customcard_body_hoursworkedlegend", fallback: "Hours worked")
          static let nodata = tr("Localizable", "insightstab_insightsdashboard_customcard_body_nodata", fallback: "There’s no data to show")
          static func people(_ p0: String) -> String {
              tr("Localizable", "insightstab_insightsdashboard_customcard_body_people", p0, fallback: "%@ people")
          }
          static let peoplelegend = tr("Localizable", "insightstab_insightsdashboard_customcard_body_peoplelegend", fallback: "People worked")
          static func ratings(_ p0: String) -> String {
              tr("Localizable", "insightstab_insightsdashboard_customcard_body_ratings", p0, fallback: "%@ ratings")
          }
          static func reviews(_ p0: String) -> String {
              tr("Localizable", "insightstab_insightsdashboard_customcard_body_reviews", p0, fallback: "%@ reviews")
          }
          static let week = tr("Localizable", "insightstab_insightsdashboard_customcard_body_week", fallback: "This week,")
          }
        enum Buttontext {
          static let retry = tr("Localizable", "insightstab_insightsdashboard_customcard_buttontext_retry", fallback: "Retry")
          }
        enum Title {
          static let attendance = tr("Localizable", "insightstab_insightsdashboard_customcard_title_attendance", fallback: "Attendance")
          static let hoursworked = tr("Localizable", "insightstab_insightsdashboard_customcard_title_hoursworked", fallback: "Hours worked")
          static let performance = tr("Localizable", "insightstab_insightsdashboard_customcard_title_performance", fallback: "Performance")
          static let satisfaction = tr("Localizable", "insightstab_insightsdashboard_customcard_title_satisfaction", fallback: "Satisfaction")
          }
        }
      enum Dangerhint {
        enum Body {
          static let dataerror = tr("Localizable", "insightstab_insightsdashboard_dangerhint_body_dataerror", fallback: "Sorry, we could not load the data.")
          }
        }
      enum Header {
        enum Title {
          static let insights = tr("Localizable", "insightstab_insightsdashboard_header_title_insights", fallback: "Insights")
          }
        }
      enum Tab {
        enum Title {
          static let name = tr("Localizable", "insightstab_insightsdashboard_tab_title_name", fallback: "Insights")
          }
        }
      }
    enum Performance {
      enum Body {
        static func avgratingcurrentweek(_ p0: String) -> String {
            tr("Localizable", "insightstab_performance_body_avgratingcurrentweek", p0, fallback: "Avg. rating of %@ people this week")
        }
        static func avgratingotherweek(_ p0: String, _ p1: String) -> String {
            tr("Localizable", "insightstab_performance_body_avgratingotherweek", p0, p1, fallback: "Avg. rating of %@ people · %@")
        }
        static func avgratingthisweek(_ p0: String) -> String {
            tr("Localizable", "insightstab_performance_body_avgratingthisweek", p0, fallback: "Avg. rating of %@ people")
        }
        static let notrateddescription = tr("Localizable", "insightstab_performance_body_notrateddescription", fallback: "Boost your workers performance by rating them. These workers haven’t been rated in the last 4 weeks. ")
        }
      enum Bottomsheet {
        enum Body {
          static let description = tr("Localizable", "insightstab_performance_bottomsheet_body_description", fallback: "Performance is based on how well someone achieves tasks, meets goals and contributes to organizational success.")
          }
        enum Hint {
          static let performance = tr("Localizable", "insightstab_performance_bottomsheet_hint_performance", fallback: "A person’s average performance rating is based on their <b>last 4 ratings.</b>")
          }
        enum Title {
          static let performance = tr("Localizable", "insightstab_performance_bottomsheet_title_performance", fallback: "Performance")
          }
        }
      enum Card {
        enum KPI {
          static let avg = tr("Localizable", "insightstab_performance_card_KPI_avg", fallback: "avg.")
          static let worked = tr("Localizable", "insightstab_performance_card_KPI_worked", fallback: "worked")
          }
        enum Body {
          static let ctarate = tr("Localizable", "insightstab_performance_card_body_ctarate", fallback: "Rate")
          static func lastrated(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_card_body_lastrated", p0, fallback: "Last rated %@")
          }
          static let neverrated = tr("Localizable", "insightstab_performance_card_body_neverrated", fallback: "Never rated before")
          }
        enum Chip {
          static let topperformer = tr("Localizable", "insightstab_performance_card_chip_topperformer", fallback: "Top performer")
          }
        }
      enum Distribution {
        enum Body {
          static let poorestperformers = tr("Localizable", "insightstab_performance_distribution_body_poorestperformers", fallback: "Very poor performance. Action required.")
          }
        enum Subtitle {
          static func bestperfomers(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_distribution_subtitle_bestperfomers", p0, fallback: "Best performers (%@)")
          }
          static func poorestperformers(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_distribution_subtitle_poorestperformers", p0, fallback: "Poorest performers (%@)")
          }
          static func watchlist(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_distribution_subtitle_watchlist", p0, fallback: "Watchlist (%@)")
          }
          }
        enum Title {
          static let distribution = tr("Localizable", "insightstab_performance_distribution_title_distribution", fallback: "Distribution")
          }
        }
      enum Header {
        enum Title {
          static func bestperformers(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_header_title_bestperformers", p0, fallback: "Best performers (%@) ")
          }
          static func notrated(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_header_title_notrated", p0, fallback: "Not rated recently (%@) ")
          }
          static let performance = tr("Localizable", "insightstab_performance_header_title_performance", fallback: "Performance")
          static func poorestperformers(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_header_title_poorestperformers", p0, fallback: "Poorest performers (%@)")
          }
          static func watchlist(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_header_title_watchlist", p0, fallback: "Watchlist (%@)")
          }
          }
        }
      enum Hint {
        enum Body {
          static func bestperformers(_ p0: String, _ p1: String) -> String {
              tr("Localizable", "insightstab_performance_hint_body_bestperformers", p0, p1, fallback: "Overall rating <b>between %@ and %@</b>. They always meet or exceed expectations. ")
          }
          static func poorestperformers(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_hint_body_poorestperformers", p0, fallback: "Consistently <b>rated under %@</b>. Contact our operations team to do a formal performance review. ")
          }
          static func watchlist(_ p0: String, _ p1: String) -> String {
              tr("Localizable", "insightstab_performance_hint_body_watchlist", p0, p1, fallback: "Overall <b>rating between %@ and %@</b>. Give more feedback and monitor them to lift performance.")
          }
          }
        }
      enum Legend {
        enum Body {
          static let avgrating = tr("Localizable", "insightstab_performance_legend_body_avgrating", fallback: "Average rating")
          static let volumepeople = tr("Localizable", "insightstab_performance_legend_body_volumepeople", fallback: "People with ratings")
          }
        }
      enum Overview {
        enum Title {
          static let overview = tr("Localizable", "insightstab_performance_overview_title_overview", fallback: "Overview")
          }
        }
      enum Subtitle {
        static func notrated(_ p0: String) -> String {
            tr("Localizable", "insightstab_performance_subtitle_notrated", p0, fallback: "Not rated recently (%@)")
        }
        }
      enum Tooltip {
        enum Body {
          static func bestperformer(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_tooltip_body_bestperformer", p0, fallback: "Best performers %@%%")
          }
          static func poorperformer(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_tooltip_body_poorperformer", p0, fallback: "Poorest performers %@%%")
          }
          static func watchlist(_ p0: String) -> String {
              tr("Localizable", "insightstab_performance_tooltip_body_watchlist", p0, fallback: "Watchlist %@%%")
          }
          }
        }
      }
    }
  enum Login {
    enum ConfirmCode {
      static let action = tr("Localizable", "login_ConfirmCode_action", fallback: "Confirm")
      static let footer = tr("Localizable", "login_ConfirmCode_footer", fallback: "Didn’t get a passcode? Go back and log in again.")
      static func subtitle(_ p0: String) -> String {
          tr("Localizable", "login_ConfirmCode_subtitle", p0, fallback: "Enter the passcode sent to %1$s")
      }
      static let title = tr("Localizable", "login_ConfirmCode_title", fallback: "Enter passcode")
      }
    enum Confirmation {
      enum Error {
        static let invalidCode = tr("Localizable", "login_Confirmation_error_invalidCode", fallback: "Wrong passcode. Log in again to get a new passcode.")
        static let invalidInput = tr("Localizable", "login_Confirmation_error_invalidInput", fallback: "Invalid input")
        static let sessionExpired = tr("Localizable", "login_Confirmation_error_sessionExpired", fallback: "Passcode expired. Log in again to get a new passcode.")
        static let tooManyRequests = tr("Localizable", "login_Confirmation_error_tooManyRequests", fallback: "Too many requests. Please try again in a few minutes.")
        }
      }
    enum ActivateAccount {
      static let button = tr("Localizable", "login_activateAccount_button", fallback: "Yes, activate my account")
      static let label = tr("Localizable", "login_activateAccount_label", fallback: "Do you have an invite?")
      }
    enum Checkemail {
      static let description = tr("Localizable", "login_checkemail_description", fallback: "We’ve sent a link to your email to reset your password. Click on the link and enter your new password.")
      static let title = tr("Localizable", "login_checkemail_title", fallback: "Check your email")
      }
    static let dontHaveAnAccountLabel = tr("Localizable", "login_dontHaveAnAccountLabel", fallback: "Don’t have an account?")
    static let emailField = tr("Localizable", "login_emailField", fallback: "Email")
    static let emailPasswordIncorrectDescription = tr("Localizable", "login_emailPasswordIncorrectDescription", fallback: "Please try again or reset your password")
    static let emailPasswordIncorrectTitle = tr("Localizable", "login_emailPasswordIncorrectTitle", fallback: "Email or password incorrect")
    enum Error {
      enum AccountSetup {
        static let description = tr("Localizable", "login_error_accountSetup_description", fallback: "Your J&T Business App account setup is incomplete. Please contact your account team for assistance.")
        static let title = tr("Localizable", "login_error_accountSetup_title", fallback: "Account not ready")
        }
      enum MissingPhoneNumber {
        static let subtitle = tr("Localizable", "login_error_missingPhoneNumber_subtitle", fallback: "Please contact your account manager.")
        static let title = tr("Localizable", "login_error_missingPhoneNumber_title", fallback: "Missing phone number")
        }
      enum TooManyRequests {
        static let description = tr("Localizable", "login_error_tooManyRequests_description", fallback: "Please try again in a few minutes.")
        static let title = tr("Localizable", "login_error_tooManyRequests_title", fallback: "Too many requests")
        }
      }
    static let forgotPasswordButton = tr("Localizable", "login_forgotPasswordButton", fallback: "Forgot password")
    enum GetInvite {
      static let button = tr("Localizable", "login_getInvite_button", fallback: "Send me an invite")
      }
    enum Linkdoesntwork {
      static let description = tr("Localizable", "login_linkdoesntwork_description", fallback: "Link doesn’t work?")
      }
    static let logInButton = tr("Localizable", "login_logInButton", fallback: "Log in")
    static let passwordField = tr("Localizable", "login_passwordField", fallback: "Password")
    static let passwordWasResetTitle = tr("Localizable", "login_passwordWasResetTitle", fallback: "Check your inbox or SMS")
    static let passwordWasResetTitleDescription = tr("Localizable", "login_passwordWasResetTitleDescription", fallback: "We've sent a link through email and SMS to reset your password")
    static let requestAccessButton = tr("Localizable", "login_requestAccessButton", fallback: "Request access")
    enum Resetpassword {
      static let link = tr("Localizable", "login_resetpassword_link", fallback: "Reset your password another way")
      }
    static let subtitle = tr("Localizable", "login_subtitle", fallback: "Welcome to Job&Talent Business")
    static let title = tr("Localizable", "login_title", fallback: "Log in")
    }
  enum Manage {
    enum Shifts {
      enum Common {
        enum Select {
          enum Whole {
            static let series = tr("Localizable", "manage_shifts_common_select_whole_series", fallback: "Select whole series")
            }
          }
        enum Unselect {
          enum Whole {
            static let series = tr("Localizable", "manage_shifts_common_unselect_whole_series", fallback: "Unselect whole series")
            }
          }
        }
      enum Search {
        enum Filter {
          enum Noresults {
            static let body = tr("Localizable", "manage_shifts_search_filter_noresults_body", fallback: "Make sure the shift name or filters applied are correct")
            static let title = tr("Localizable", "manage_shifts_search_filter_noresults_title", fallback: "No results")
            }
          }
        }
      }
    }
  enum ManageWorkers {
    enum ActionButtonForPublishedShift {
      static let title = tr("Localizable", "manageWorkers_actionButtonForPublishedShift_title", fallback: "Notify assigned people")
      }
    enum AvailableWorker {
      static func description(_ p0: Int) -> String {
          tr("Localizable", "manageWorkers_availableWorker_description", p0, fallback: "%d people available for this shift")
      }
      }
    enum FilterItem {
      static let afternoons = tr("Localizable", "manageWorkers_filterItem_afternoons", fallback: "Afternoons")
      static let anyShift = tr("Localizable", "manageWorkers_filterItem_anyShift", fallback: "Any Shift")
      static let mornings = tr("Localizable", "manageWorkers_filterItem_mornings", fallback: "Mornings")
      static let nights = tr("Localizable", "manageWorkers_filterItem_nights", fallback: "Nights")
      }
    enum InviteShift {
      static let counterWarning = tr("Localizable", "manageWorkers_inviteShift_counterWarning", fallback: "Invite as many people as you require, or more.")
      }
    enum Sort {
      enum PeopleWorking {
        static let title = tr("Localizable", "manageWorkers_sort_peopleWorking_title", fallback: "People working")
        }
      enum Roles {
        static let title = tr("Localizable", "manageWorkers_sort_roles_title", fallback: "Roles")
        }
      }
    enum SortItem {
      static let attendance = tr("Localizable", "manageWorkers_sortItem_attendance", fallback: "Attendance")
      static let hoursAssigned = tr("Localizable", "manageWorkers_sortItem_hoursAssigned", fallback: "Hours assigned")
      static let rating = tr("Localizable", "manageWorkers_sortItem_rating", fallback: "Rating")
      static let responseRate = tr("Localizable", "manageWorkers_sortItem_responseRate", fallback: "Response rate")
      }
    }
  enum ManagerForm {
    enum Field {
      static let email = tr("Localizable", "managerForm_field_email", fallback: "Email")
      static let name = tr("Localizable", "managerForm_field_name", fallback: "Full name")
      static let nameError = tr("Localizable", "managerForm_field_nameError", fallback: "Mandatory field")
      static let phone = tr("Localizable", "managerForm_field_phone", fallback: "Cell number")
      static let phoneError = tr("Localizable", "managerForm_field_phoneError", fallback: "Number not valid")
      static let phoneErrorNoCountry = tr("Localizable", "managerForm_field_phoneErrorNoCountry", fallback: "Country code missing, for example +1...")
      static let phoneInfo = tr("Localizable", "managerForm_field_phoneInfo", fallback: "Include country code (ie. +34661215457)")
      static let save = tr("Localizable", "managerForm_field_save", fallback: "Save changes")
      }
    enum SuccessfulUpdateProfile {
      enum Snackbar {
        static let description = tr("Localizable", "managerForm_successfulUpdateProfile_snackbar_description", fallback: "We've saved successfully your details")
        static let title = tr("Localizable", "managerForm_successfulUpdateProfile_snackbar_title", fallback: "Changes saved")
        }
      }
    }
  enum NewPassword {
    static let confirmButton = tr("Localizable", "newPassword_confirmButton", fallback: "Confirm")
    enum Description {
      static let code = tr("Localizable", "newPassword_description_code", fallback: "Enter the code we sent to your email.")
      }
    enum Hint {
      enum Description {
        static let invalidcode = tr("Localizable", "newPassword_hint_description_invalidcode", fallback: "Please request another code again. ")
        static let manyrequests = tr("Localizable", "newPassword_hint_description_manyrequests", fallback: "Please try again after some time. ")
        }
      static let incorrectformat = tr("Localizable", "newPassword_hint_incorrectformat", fallback: "Incorrect password format.")
      enum Title {
        static let invalidcode = tr("Localizable", "newPassword_hint_title_invalidcode", fallback: "Invalid code")
        static let manyrequests = tr("Localizable", "newPassword_hint_title_manyrequests", fallback: "Too many requests")
        }
      }
    static let linkErrorDescription = tr("Localizable", "newPassword_linkErrorDescription", fallback: "Please try resetting your password again.")
    static let linkErrorTitle = tr("Localizable", "newPassword_linkErrorTitle", fallback: "Link expired")
    static let passwordField = tr("Localizable", "newPassword_passwordField", fallback: "New password")
    static let passwordFieldDescription = tr("Localizable", "newPassword_passwordFieldDescription", fallback: "Password must be at least 12 characters and contain at least 1 uppercase letter and 1 lowercase letter.")
    static let passwordWasResetDescription = tr("Localizable", "newPassword_passwordWasResetDescription", fallback: "Your password has been reset")
    static let passwordWasResetTitle = tr("Localizable", "newPassword_passwordWasResetTitle", fallback: "Password successfully reset")
    static let repeatPasswordField = tr("Localizable", "newPassword_repeatPasswordField", fallback: "Repeat new password")
    static let repeatPasswordIncorrectDescription = tr("Localizable", "newPassword_repeatPasswordIncorrectDescription", fallback: "Passwords don’t match. ")
    static let title = tr("Localizable", "newPassword_title", fallback: "Create a new password")
    enum Title {
      static let code = tr("Localizable", "newPassword_title_code", fallback: "Code")
      }
    }
  enum Notification {
    enum Channel {
      enum General {
        static let title = tr("Localizable", "notification_channel_general_title", fallback: "General")
        }
      }
    enum Rationale {
      enum Permission {
        static let description = tr("Localizable", "notification_rationale_permission_description", fallback: "Get updates about your shifts and reminders to review and approve hours.")
        static let title = tr("Localizable", "notification_rationale_permission_title", fallback: "Allow notifications")
        }
      }
    }
  enum Notifications {
    enum Notifications {
      enum Push {
        enum Body {
          static func greatatt(_ p0: String) -> String {
              tr("Localizable", "notifications_notifications_push_body_greatatt", p0, fallback: "You had %@%% attendance yesterday. Excellent work. ")
          }
          static func greatjob(_ p0: String, _ p1: String) -> String {
              tr("Localizable", "notifications_notifications_push_body_greatjob", p0, p1, fallback: "You had %@%% attendance and %@ was your average shift satisfaction rate. Fantastic.")
          }
          static func reviewclockings(_ p0: String) -> String {
              tr("Localizable", "notifications_notifications_push_body_reviewclockings", p0, fallback: "%@ clockings outstanding from last week. Tap to review now. ")
          }
          static func satisfaction(_ p0: String) -> String {
              tr("Localizable", "notifications_notifications_push_body_satisfaction", p0, fallback: "%@ was your average shift satisfaction rate yesterday. Tap to learn more.")
          }
          static func yesterdayatt(_ p0: String, _ p1: String) -> String {
              tr("Localizable", "notifications_notifications_push_body_yesterdayatt", p0, p1, fallback: "You had %@%% attendance and %@ no shows. Tap to learn more.")
          }
          static func yesterdayshifts(_ p0: String, _ p1: String, _ p2: String) -> String {
              tr("Localizable", "notifications_notifications_push_body_yesterdayshifts", p0, p1, p2, fallback: "You had %@%% attendance, %@ no shows and %@ average shift satisfaction rate. Tap to learn more.")
          }
          }
        enum Title {
          static let greatatt = tr("Localizable", "notifications_notifications_push_title_greatatt", fallback: "Amazing attendance")
          static let greatjob = tr("Localizable", "notifications_notifications_push_title_greatjob", fallback: "Great job yesterday")
          static let reviewclockings = tr("Localizable", "notifications_notifications_push_title_reviewclockings", fallback: "Clockings to review")
          static let satisfaction = tr("Localizable", "notifications_notifications_push_title_satisfaction", fallback: "Shift satisfaction update")
          static let yesterdayatt = tr("Localizable", "notifications_notifications_push_title_yesterdayatt", fallback: "Your shifts yesterday")
          static let yesterdayshifts = tr("Localizable", "notifications_notifications_push_title_yesterdayshifts", fallback: "Your shifts yesterday")
          }
        }
      }
    static let title = tr("Localizable", "notifications_title", fallback: "Notifications")
    }
  enum Openinvites {
    enum Shiftdetail {
      enum Invited {
        static func title(_ localized_format_key: Int) -> String {
            tr("Plurals", "openinvites_shiftdetail_invited_title", localized_format_key, fallback: "%d invited")
        }
        }
      }
    }
  enum Operations {
    enum DeleteShift {
      enum Fail {
        static let description = tr("Localizable", "operations_deleteShift_fail_description", fallback: "The shift could not be deleted")
        static let title = tr("Localizable", "operations_deleteShift_fail_title", fallback: "Something went wrong")
        }
      }
    enum EditShift {
      enum Fail {
        static let description = tr("Localizable", "operations_editShift_fail_description", fallback: "The shift could not be updated")
        }
      }
    }
  enum Overprovision {
    enum Info {
      enum Bottomsheet {
        static let body = tr("Localizable", "overprovision_info_bottomsheet_body", fallback: "You can increase the number of confirmations required for closing invite period to make sure you hit your shift’s attendance target. ")
        static let title = tr("Localizable", "overprovision_info_bottomsheet_title", fallback: "Requesting extra people")
        }
      }
    enum Request {
      enum Extra {
        enum Input {
          static let label = tr("Localizable", "overprovision_request_extra_input_label", fallback: "Request extra")
          static func subtext(_ p0: String) -> String {
              tr("Localizable", "overprovision_request_extra_input_subtext", p0, fallback: "Invites will close after <b>%@</b> people confirm")
          }
          }
        }
      }
    }
  enum People {
    enum Filters {
      static let all = tr("Localizable", "people_filters_all", fallback: "All")
      enum Ending {
        static let soon = tr("Localizable", "people_filters_ending_soon", fallback: "Ending soon")
        }
      enum Poor {
        static let performers = tr("Localizable", "people_filters_poor_performers", fallback: "Poorest performers")
        }
      }
    enum Status {
      enum Ending {
        static let soon = tr("Localizable", "people_status_ending_soon", fallback: "Ending soon")
        enum Soon {
          static func days(_ p0: String) -> String {
              tr("Localizable", "people_status_ending_soon_days", p0, fallback: "(%@ days)")
          }
          static let today = tr("Localizable", "people_status_ending_soon_today", fallback: "(today)")
          }
        }
      }
    }
  enum PeopleOverview {
    static let activeWorkers = tr("Localizable", "peopleOverview_activeWorkers", fallback: "active workers")
    static let delta = tr("Localizable", "peopleOverview_delta", fallback: "vs last week")
    enum Kpi {
      static let endingSoon = tr("Localizable", "peopleOverview_kpi_endingSoon", fallback: "Ending soon")
      static let poor = tr("Localizable", "peopleOverview_kpi_poor", fallback: "Poor performers")
      static let unavailable = tr("Localizable", "peopleOverview_kpi_unavailable", fallback: "Unavailable")
      }
    enum Page {
      enum EndingSoon {
        static let title = tr("Localizable", "peopleOverview_page_endingSoon_title", fallback: "Ending soon")
        }
      enum Poor {
        static let alert = tr("Localizable", "peopleOverview_page_poor_alert", fallback: "Consistently rated under 3. Contact our operations team to do a formal performance review. ")
        static let title = tr("Localizable", "peopleOverview_page_poor_title", fallback: "Poor performers")
        }
      enum QuickFilters {
        static let all = tr("Localizable", "peopleOverview_page_quickFilters_all", fallback: "All from today")
        static let nextWeek = tr("Localizable", "peopleOverview_page_quickFilters_nextWeek", fallback: "Next week")
        static let thisWeek = tr("Localizable", "peopleOverview_page_quickFilters_thisWeek", fallback: "This week")
        static let today = tr("Localizable", "peopleOverview_page_quickFilters_today", fallback: "Today")
        }
      enum Unavailable {
        enum Empty {
          static let body = tr("Localizable", "peopleOverview_page_unavailable_empty_body", fallback: "Try selecting other periods")
          static let title = tr("Localizable", "peopleOverview_page_unavailable_empty_title", fallback: "No unavailable people in this period")
          }
        static let title = tr("Localizable", "peopleOverview_page_unavailable_title", fallback: "Unavailable")
        }
      }
    }
  enum PeoplePlanning {
    enum FloatingMenu {
      static let createShiftItem = tr("Localizable", "peoplePlanning_floatingMenu_createShiftItem", fallback: "Create shift")
      }
    enum HoursAssigned {
      static func label(_ p0: String) -> String {
          tr("Localizable", "peoplePlanning_hoursAssigned_label", p0, fallback: "%@h assigned")
      }
      }
    enum ManageShifts {
      static let button = tr("Localizable", "peoplePlanning_manageShifts_button", fallback: "Save Assignment")
      }
    enum MultipleShifts {
      static func label(_ p0: String) -> String {
          tr("Localizable", "peoplePlanning_multipleShifts_label", p0, fallback: "x%@")
      }
      }
    enum NoShiftsAvailable {
      static let createNewShift = tr("Localizable", "peoplePlanning_noShiftsAvailable_createNewShift", fallback: "Create new shift")
      static let description = tr("Localizable", "peoplePlanning_noShiftsAvailable_description", fallback: "There are no shifts for date and time selected. Choose different dates or create new shifts. ")
      }
    enum WorkerAssignments {
      static let manageShifts = tr("Localizable", "peoplePlanning_workerAssignments_manageShifts", fallback: "Manage shifts")
      static func shifts(_ localized_format_key: Int) -> String {
          tr("Plurals", "peoplePlanning_workerAssignments_shifts", localized_format_key, fallback: "%d shifts")
      }
      }
    }
  enum Peopletab {
    enum Topbar {
      static let hiring = tr("Localizable", "peopletab_topbar_hiring", fallback: "People")
      }
    enum Workercard {
      enum Tag {
        static let new = tr("Localizable", "peopletab_workercard_tag_new", fallback: "New ")
        }
      }
    }
  enum Permissions {
    enum Bottomsheet {
      enum PermissionRequired {
        static let body = tr("Localizable", "permissions_bottomsheet_permissionRequired_body", fallback: "It looks like you don’t have permission to perform this action. Contact your system administrator or Job&Talent for assistance.")
        static let title = tr("Localizable", "permissions_bottomsheet_permissionRequired_title", fallback: "Permission required")
        }
      }
    enum Dialog {
      static let camera = tr("Localizable", "permissions_dialog_camera", fallback: "Required for your profile picture")
      }
    enum Rejected {
      enum Camera {
        static let button = tr("Localizable", "permissions_rejected_camera_button", fallback: "Allow access")
        static let description = tr("Localizable", "permissions_rejected_camera_description", fallback: "You previously denied access. You can allow access in your device settings.")
        static let title = tr("Localizable", "permissions_rejected_camera_title", fallback: "Allow access to your camera")
        }
      enum PhotoLibrary {
        static let title = tr("Localizable", "permissions_rejected_photoLibrary_title", fallback: "Allow access to your gallery")
        }
      }
    }
  enum Planning {
    enum Bypeople {
      static let chip = tr("Localizable", "planning_bypeople_chip", fallback: "By people")
      }
    enum Byshifts {
      static let chip = tr("Localizable", "planning_byshifts_chip", fallback: "By shifts")
      }
    }
  enum PlanningAlerts {
    enum ShiftDetails {
      static let assignPeople = tr("Localizable", "planningAlerts_shiftDetails_assignPeople", fallback: "Assign people")
      enum Panic {
        static let description = tr("Localizable", "planningAlerts_shiftDetails_panic_description", fallback: "People confirmed do not reach people required.")
        }
      }
    }
  enum PlanningShiftDetails {
    enum Worker {
      static let missingFinish = tr("Localizable", "planningShiftDetails_worker_missingFinish", fallback: "Incomplete clocking")
      static let missingStart = tr("Localizable", "planningShiftDetails_worker_missingStart", fallback: "Incomplete clocking")
      static let onTime = tr("Localizable", "planningShiftDetails_worker_onTime", fallback: "ON TIME")
      }
    enum WorkersAssignedList {
      static let title = tr("Localizable", "planningShiftDetails_workersAssignedList_title", fallback: "Assigned")
      }
    enum WorkersAttendanceList {
      static let title = tr("Localizable", "planningShiftDetails_workersAttendanceList_title", fallback: "Attendance")
      }
    enum WorkersConfirmedList {
      static func title(_ p0: Int) -> String {
          tr("Localizable", "planningShiftDetails_workersConfirmedList_title", p0, fallback: "%d confirmed")
      }
      }
    enum WorkersInvitedList {
      static func title(_ localized_format_key: Int) -> String {
          tr("Plurals", "planningShiftDetails_workersInvitedList_title", localized_format_key, fallback: "%d invites created")
      }
      }
    enum WorkersNotifiedList {
      static let title = tr("Localizable", "planningShiftDetails_workersNotifiedList_title", fallback: "Notified")
      }
    }
  enum PlanningTab {
    enum EmptyWeek {
      static let description = tr("Localizable", "planningTab_emptyWeek_description", fallback: "There are no shifts scheduled for this week")
      static let title = tr("Localizable", "planningTab_emptyWeek_title", fallback: "Nothing is planned")
      }
    enum NoWorkers {
      static let description = tr("Localizable", "planningTab_noWorkers_description", fallback: "There are no active workers for this week")
      static let title = tr("Localizable", "planningTab_noWorkers_title", fallback: "There is no one here")
      }
    }
  enum Pln {
    enum Summary {
      enum Category {
        static let peoplewithoutshifts = tr("Localizable", "pln_summary_category_peoplewithoutshifts", fallback: "People without shifts")
        static let risk = tr("Localizable", "pln_summary_category_risk", fallback: "Shifts at risk")
        }
      static let hoursassigned = tr("Localizable", "pln_summary_hoursassigned", fallback: "hours assigned")
      enum Kpisheet {
        static let emptyatrisk = tr("Localizable", "pln_summary_kpisheet_emptyatrisk", fallback: "Good job. All shifts are under control.")
        static let emptypeoplewithoutshifts = tr("Localizable", "pln_summary_kpisheet_emptypeoplewithoutshifts", fallback: "Great work. Everyone has shifts assigned.")
        }
      static func weekavg(_ p0: String) -> String {
          tr("Localizable", "pln_summary_weekavg", p0, fallback: "Week avg %@h")
      }
      }
    }
  static let privacyPolicy = tr("Localizable", "privacyPolicy", fallback: "Privacy Policy")
  enum PrivacyPolicy {
    static let url = tr("Localizable", "privacyPolicy_url", fallback: "https://www.jobandtalent.co.uk/legal/privacy-notice")
    }
  enum Profile {
    static let changeWorkplace = tr("Localizable", "profile_changeWorkplace", fallback: "Change workplace")
    static let confirmLogout = tr("Localizable", "profile_confirmLogout", fallback: "Do you want to log out?")
    enum DevelopersMenu {
      static let button = tr("Localizable", "profile_developersMenu_button", fallback: "Developers Menu")
      }
    static let logOut = tr("Localizable", "profile_logOut", fallback: "Log out")
    static let title = tr("Localizable", "profile_title", fallback: "Profile")
    static let version = tr("Localizable", "profile_version", fallback: "version")
    }
  enum PublishBulkShifts {
    enum Confirmation {
      static let button = tr("Localizable", "publishBulkShifts_confirmation_button", fallback: "Yes, publish")
      static func description(_ localized_format_key: Int) -> String {
          tr("Plurals", "publishBulkShifts_confirmation_description", localized_format_key, fallback: "You are about to publish %1$d different shifts, people assigned will get notified")
      }
      static let hint = tr("Localizable", "publishBulkShifts_confirmation_hint", fallback: "Some shifts in the selected days are not publishable. Make sure that all shifts are assigned.")
      enum Title {
        static func range(_ p0: String, _ p1: String) -> String {
            tr("Localizable", "publishBulkShifts_confirmation_title_range", p0, p1, fallback: "Publish the shifts from %@ to %@?")
        }
        static func singleDate(_ p0: String) -> String {
            tr("Localizable", "publishBulkShifts_confirmation_title_singleDate", p0, fallback: "Publish the shifts of %@?")
        }
        }
      }
    static let custom = tr("Localizable", "publishBulkShifts_custom", fallback: "Custom")
    enum Custom {
      static let warning = tr("Localizable", "publishBulkShifts_custom_warning", fallback: "There are no shifts to publish between the dates selected. Please try other dates")
      }
    enum Error {
      static let description = tr("Localizable", "publishBulkShifts_error_description", fallback: "We're sorry, we couldn't publish the shifts. Please try again.")
      }
    enum MenuItem {
      static let title = tr("Localizable", "publishBulkShifts_menuItem_title", fallback: "Publish shifts")
      }
    enum Success {
      static let description = tr("Localizable", "publishBulkShifts_success_description", fallback: "People assigned have been notified.")
      static let title = tr("Localizable", "publishBulkShifts_success_title", fallback: "Shifts published")
      }
    static let title = tr("Localizable", "publishBulkShifts_title", fallback: "What shifts do you want to publish?")
    static func tomorrow(_ p0: String) -> String {
        tr("Localizable", "publishBulkShifts_tomorrow", p0, fallback: "All shifts tomorrow (%@)")
    }
    static func week(_ p0: String) -> String {
        tr("Localizable", "publishBulkShifts_week", p0, fallback: "All shifts this week (%@)")
    }
    }
  enum PublishPastShift {
    static let description = tr("Localizable", "publishPastShift_description", fallback: "People will see this past shift and clockings in their schedule.")
    }
  enum PublishShift {
    static let description = tr("Localizable", "publishShift_description", fallback: "Once you publish, everyone who has been assigned to work will be notified.")
    enum Fail {
      enum Snackbar {
        static let description = tr("Localizable", "publishShift_fail_snackbar_description", fallback: "We're sorry, there was an error. Your shift was not published. Please try again")
        static let title = tr("Localizable", "publishShift_fail_snackbar_title", fallback: "Shift not published")
        }
      }
    enum Operation {
      enum In {
        enum Progress {
          static let description = tr("Localizable", "publishShift_operation_in_progress_description", fallback: "Your shift is being published")
          static let title = tr("Localizable", "publishShift_operation_in_progress_title", fallback: "Publishing shift…")
          }
        }
      }
    enum PrimaryActionPupup {
      static let description = tr("Localizable", "publishShift_primaryActionPupup_description", fallback: "Your shift has been published and the people you’ve assigned have been notified.")
      static let title = tr("Localizable", "publishShift_primaryActionPupup_title", fallback: "Shift published")
      }
    enum PrimaryButton {
      static let title = tr("Localizable", "publishShift_primaryButton_title", fallback: "Yes, publish shift")
      }
    enum SecondaryButton {
      static let title = tr("Localizable", "publishShift_secondaryButton_title", fallback: "Cancel")
      }
    enum ShiftCard {
      static let status = tr("Localizable", "publishShift_shiftCard_status", fallback: "people assigned")
      }
    enum Success {
      enum Snackbar {
        static let description = tr("Localizable", "publishShift_success_snackbar_description", fallback: "The people you’ve assigned to work have been notified")
        static let title = tr("Localizable", "publishShift_success_snackbar_title", fallback: "Shift published ")
        }
      }
    static let title = tr("Localizable", "publishShift_title", fallback: "Publish shift?")
    static let warning = tr("Localizable", "publishShift_warning", fallback: "It looks like you have not assigned all the people you need for this shift.")
    }
  enum RatingsExplanation {
    static let additionalInfo = tr("Localizable", "ratingsExplanation_additionalInfo", fallback: "You can edit feedback after it’s been sent. Once you update it, this person will receive another update.")
    static let description = tr("Localizable", "ratingsExplanation_description", fallback: "Give ratings and feedback after a shift or at least once a week. It motivates your top performers, and helps everyone else improve.<br><br>Ratings and feedback is anonymized and is shared instantly.")
    enum List {
      static let 1star = tr("Localizable", "ratingsExplanation_list_1star", fallback: "<b>1 star</b> = Bad: Their performance was significantly below expectations.")
      static let 2stars = tr("Localizable", "ratingsExplanation_list_2stars", fallback: "<b>2 stars</b> = Poor: Their performance was below average and requires attention.")
      static let 3stars = tr("Localizable", "ratingsExplanation_list_3stars", fallback: "<b>3 stars</b> = Needs improvement: They require feedback to meet certain expectations.")
      static let 4stars = tr("Localizable", "ratingsExplanation_list_4stars", fallback: "<b>4 stars</b> =  Good: They have met expectations.")
      static let 5stars = tr("Localizable", "ratingsExplanation_list_5stars", fallback: "<b>5 stars</b> = Excellent: A great performance above expectations.")
      static let title = tr("Localizable", "ratingsExplanation_list_title", fallback: "<b>What the star ratings means</b>")
      }
    static let title = tr("Localizable", "ratingsExplanation_title", fallback: "How ratings work")
    }
  enum RejectHours {
    static let body = tr("Localizable", "rejectHours_body", fallback: "If you reject these hours, this person will not be paid for this shift. Be certain they did not attend before continuing.")
    enum Button {
      static let reject = tr("Localizable", "rejectHours_button_reject", fallback: "Yes, reject hours")
      }
    static let title = tr("Localizable", "rejectHours_title", fallback: "Reject hours?")
    }
  enum RequestAccess {
    static let description = tr("Localizable", "requestAccess_description", fallback: "Please contact your Job&Talent Business administrator to get access.")
    static let title = tr("Localizable", "requestAccess_title", fallback: "Request access")
    }
  enum RolesAssignment {
    enum AssignmentFailed {
      static let description = tr("Localizable", "rolesAssignment_assignmentFailed_description", fallback: "We're sorry, there was an error. Please try again.")
      static let title = tr("Localizable", "rolesAssignment_assignmentFailed_title", fallback: "Role not updated")
      }
    enum Empty {
      static let description = tr("Localizable", "rolesAssignment_empty_description", fallback: "Contact your Job&Talent account manager to create roles for your workplace.")
      static let title = tr("Localizable", "rolesAssignment_empty_title", fallback: "No roles created yet")
      }
    static let title = tr("Localizable", "rolesAssignment_title", fallback: "Update role")
    }
  enum Root {
    static let attendanceTab = tr("Localizable", "root_attendanceTab", fallback: "Attendance")
    static let notificationsTab = tr("Localizable", "root_notificationsTab", fallback: "Notifications")
    static let planningTab = tr("Localizable", "root_planningTab", fallback: "Planning")
    static let profileTab = tr("Localizable", "root_profileTab", fallback: "Profile")
    static let shiftsTab = tr("Localizable", "root_shiftsTab", fallback: "Shifts")
    static let workersTab = tr("Localizable", "root_workersTab", fallback: "People")
    }
  enum Sar {
    enum Request {
      enum BottomSheet {
        enum Detail {
          enum Cta {
            static let cancel = tr("Localizable", "sar_request_bottomSheet_detail_cta_cancel", fallback: "Cancel request")
            }
          enum Label {
            static let completedOn = tr("Localizable", "sar_request_bottomSheet_detail_label_completedOn", fallback: "Completed on")
            enum EndDate {
              static let j&t = tr("Localizable", "sar_request_bottomSheet_detail_label_endDate_j&t", fallback: "End date with J&T")
              static let replacement = tr("Localizable", "sar_request_bottomSheet_detail_label_endDate_replacement", fallback: "Replacement’s start date")
              static let worker = tr("Localizable", "sar_request_bottomSheet_detail_label_endDate_worker", fallback: "End date for")
              }
            enum New {
              static let endDate = tr("Localizable", "sar_request_bottomSheet_detail_label_new_endDate", fallback: "New end date")
              }
            enum Original {
              static let endDate = tr("Localizable", "sar_request_bottomSheet_detail_label_original_endDate", fallback: "Original end date")
              }
            static let reason = tr("Localizable", "sar_request_bottomSheet_detail_label_reason", fallback: "Reason")
            enum Replace {
              static let worker = tr("Localizable", "sar_request_bottomSheet_detail_label_replace_worker", fallback: "Replace worker")
              }
            enum Replacement {
              static let startDate = tr("Localizable", "sar_request_bottomSheet_detail_label_replacement_startDate", fallback: "Replacement’s start date")
              }
            static let requestDate = tr("Localizable", "sar_request_bottomSheet_detail_label_requestDate", fallback: "Date")
            static let requestedBy = tr("Localizable", "sar_request_bottomSheet_detail_label_requestedBy", fallback: "Requested by")
            static let status = tr("Localizable", "sar_request_bottomSheet_detail_label_status", fallback: "Status")
            }
          enum Title {
            static let end = tr("Localizable", "sar_request_bottomSheet_detail_title_end", fallback: "Requested to end job")
            static let extend = tr("Localizable", "sar_request_bottomSheet_detail_title_extend", fallback: "Requested to extend")
            static let hire = tr("Localizable", "sar_request_bottomSheet_detail_title_hire", fallback: "Requested to hire")
            static let replace = tr("Localizable", "sar_request_bottomSheet_detail_title_replace", fallback: "Requested to be replaced")
            }
          }
        }
      enum Status {
        static let completed = tr("Localizable", "sar_request_status_completed", fallback: "Completed")
        static let declined = tr("Localizable", "sar_request_status_declined", fallback: "Declined")
        static let wip = tr("Localizable", "sar_request_status_wip", fallback: "In progress")
        }
      }
    }
  enum Sarlog {
    enum Requests {
      enum Empty {
        enum State {
          static let body = tr("Localizable", "sarlog_requests_empty_state_body", fallback: "Track requests to extend or end jobs, and to hire or replace workers here.")
          static let title = tr("Localizable", "sarlog_requests_empty_state_title", fallback: "No requests yet")
          }
        }
      enum QuickFilters {
        static let all = tr("Localizable", "sarlog_requests_quickFilters_all", fallback: "All")
        static let completed = tr("Localizable", "sarlog_requests_quickFilters_completed", fallback: "Completed")
        static let createdByYou = tr("Localizable", "sarlog_requests_quickFilters_createdByYou", fallback: "Created by you")
        static let declined = tr("Localizable", "sarlog_requests_quickFilters_declined", fallback: "Declined")
        enum EmptyState {
          static let body = tr("Localizable", "sarlog_requests_quickFilters_emptyState_body", fallback: "Try adjusting or removing your filters")
          static let clear = tr("Localizable", "sarlog_requests_quickFilters_emptyState_clear", fallback: "Clear filters")
          static let title = tr("Localizable", "sarlog_requests_quickFilters_emptyState_title", fallback: "No results")
          }
        enum Types {
          static let all = tr("Localizable", "sarlog_requests_quickFilters_types_all", fallback: "All types")
          enum BottomSheet {
            static let title = tr("Localizable", "sarlog_requests_quickFilters_types_bottomSheet_title", fallback: "Type")
            }
          static let end = tr("Localizable", "sarlog_requests_quickFilters_types_end", fallback: "End job")
          static let extend = tr("Localizable", "sarlog_requests_quickFilters_types_extend", fallback: "Extend")
          static let hire = tr("Localizable", "sarlog_requests_quickFilters_types_hire", fallback: "Hire")
          static let multiple = tr("Localizable", "sarlog_requests_quickFilters_types_multiple", fallback: "selected")
          static let replace = tr("Localizable", "sarlog_requests_quickFilters_types_replace", fallback: "Replace")
          }
        static let wip = tr("Localizable", "sarlog_requests_quickFilters_wip", fallback: "In progress")
        }
      static let title = tr("Localizable", "sarlog_requests_title", fallback: "Requests")
      enum Workercards {
        enum Types {
          static let end = tr("Localizable", "sarlog_requests_workercards_types_end", fallback: "End job")
          static let extend = tr("Localizable", "sarlog_requests_workercards_types_extend", fallback: "Extend")
          static let hire = tr("Localizable", "sarlog_requests_workercards_types_hire", fallback: "Hire")
          }
        }
      }
    }
  enum Shift {
    enum Clockings {
      enum Approved {
        static func label(_ p0: Int, _ p1: Int) -> String {
            tr("Localizable", "shift_clockings_approved_label", p0, p1, fallback: "%d/%d clockings approved")
        }
        }
      }
    enum Day {
      static let todayLabel = tr("Localizable", "shift_day_todayLabel", fallback: "Today")
      }
    enum Kpi {
      enum Accepted {
        static let description = tr("Localizable", "shift_kpi_accepted_description", fallback: "People confirmed")
        static let label = tr("Localizable", "shift_kpi_accepted_label", fallback: "confirmed")
        }
      enum Assigned {
        static let description = tr("Localizable", "shift_kpi_assigned_description", fallback: "People assigned")
        static let label = tr("Localizable", "shift_kpi_assigned_label", fallback: "assigned")
        }
      enum Confirmed {
        static let label = tr("Localizable", "shift_kpi_confirmed_label", fallback: "confirmed")
        }
      enum Invited {
        static let label = tr("Localizable", "shift_kpi_invited_label", fallback: "invited")
        }
      enum NoResponse {
        static let label = tr("Localizable", "shift_kpi_noResponse_label", fallback: "no response")
        }
      enum Required {
        static let description = tr("Localizable", "shift_kpi_required_description", fallback: "People required")
        static let label = tr("Localizable", "shift_kpi_required_label", fallback: "required")
        }
      enum Reviewed {
        static let description = tr("Localizable", "shift_kpi_reviewed_description", fallback: "People reviewed")
        static let label = tr("Localizable", "shift_kpi_reviewed_label", fallback: "reviewed")
        }
      enum Worked {
        static let description = tr("Localizable", "shift_kpi_worked_description", fallback: "People worked")
        static let label = tr("Localizable", "shift_kpi_worked_label", fallback: "worked")
        }
      enum Working {
        static let description = tr("Localizable", "shift_kpi_working_description", fallback: "People working")
        static let label = tr("Localizable", "shift_kpi_working_label", fallback: "working")
        }
      }
    enum Label {
      static let approved = tr("Localizable", "shift_label_approved", fallback: "Approved")
      static let done = tr("Localizable", "shift_label_done", fallback: " ")
      static let draft = tr("Localizable", "shift_label_draft", fallback: "Draft")
      static let ended = tr("Localizable", "shift_label_ended", fallback: "Review")
      static let ongoing = tr("Localizable", "shift_label_ongoing", fallback: "Live")
      static let published = tr("Localizable", "shift_label_published", fallback: "Published")
      }
    enum Publish {
      static let button = tr("Localizable", "shift_publish_button", fallback: "Publish")
      }
    enum Workers {
      static let accepted = tr("Localizable", "shift_workers_accepted", fallback: "accepted")
      static let assigned = tr("Localizable", "shift_workers_assigned", fallback: "assigned")
      static let attended = tr("Localizable", "shift_workers_attended", fallback: "attended")
      static let attending = tr("Localizable", "shift_workers_attending", fallback: "attending")
      static let confirmed = tr("Localizable", "shift_workers_confirmed", fallback: "confirmed")
      enum Rated {
        static func label(_ p0: String, _ p1: String) -> String {
            tr("Localizable", "shift_workers_rated_label", p0, p1, fallback: "%@/%@ rated")
        }
        }
      static let requested = tr("Localizable", "shift_workers_requested", fallback: "required")
      static let reviewed = tr("Localizable", "shift_workers_reviewed", fallback: "reviewed")
      static let worked = tr("Localizable", "shift_workers_worked", fallback: "worked")
      static let working = tr("Localizable", "shift_workers_working", fallback: "working")
      }
    }
  enum ShiftColor {
    static let blue = tr("Localizable", "shiftColor_blue", fallback: "Blue")
    static let darkBlue = tr("Localizable", "shiftColor_darkBlue", fallback: "Dark blue")
    static let darkGreen = tr("Localizable", "shiftColor_darkGreen", fallback: "Dark green")
    static let darkOrange = tr("Localizable", "shiftColor_darkOrange", fallback: "Dark orange")
    static let darkPurple = tr("Localizable", "shiftColor_darkPurple", fallback: "Dark purple")
    static let darkRed = tr("Localizable", "shiftColor_darkRed", fallback: "Dark red")
    static let green = tr("Localizable", "shiftColor_green", fallback: "Green")
    static let orange = tr("Localizable", "shiftColor_orange", fallback: "Orange")
    static let purple = tr("Localizable", "shiftColor_purple", fallback: "Purple")
    static let red = tr("Localizable", "shiftColor_red", fallback: "Red")
    static let yellow = tr("Localizable", "shiftColor_yellow", fallback: "Yellow")
    }
  enum ShiftDetails {
    enum Attendance {
      static let warningAssignedRetroactively = tr("Localizable", "shiftDetails_attendance_warningAssignedRetroactively", fallback: "Some workers were added after the shift's start time and date")
      static let warningRetroactive = tr("Localizable", "shiftDetails_attendance_warningRetroactive", fallback: "This shift was published after its start time.")
      }
    enum ClockingsConfirmationError {
      static let description = tr("Localizable", "shiftDetails_clockingsConfirmationError_description", fallback: "We're sorry, we couldn't approve these hours. Please try again shortly.")
      }
    static func clockingsReviewed(_ p0: String, _ p1: String) -> String {
        tr("Localizable", "shiftDetails_clockingsReviewed", p0, p1, fallback: "%@/%@ clockings reviewed")
    }
    enum ConnectionError {
      enum Action {
        static let title = tr("Localizable", "shiftDetails_connectionError_action_title", fallback: "Try again")
        }
      static let description = tr("Localizable", "shiftDetails_connectionError_description", fallback: "Please check your internet connection and try again.")
      static let title = tr("Localizable", "shiftDetails_connectionError_title", fallback: "There was a network error")
      }
    enum DownloadingNextPageError {
      static let buttonText = tr("Localizable", "shiftDetails_downloadingNextPageError_buttonText", fallback: "Retry")
      static let description = tr("Localizable", "shiftDetails_downloadingNextPageError_description", fallback: "Something went wrong while loading this content. Please try again.")
      }
    enum ManageWorkersButton {
      static let title = tr("Localizable", "shiftDetails_manageWorkersButton_title", fallback: "Manage people")
      }
    enum NotFoundError {
      enum Action {
        static let title = tr("Localizable", "shiftDetails_notFoundError_action_title", fallback: "Back to shift list")
        }
      }
    enum Publish {
      static let warningPastShift = tr("Localizable", "shiftDetails_publish_warningPastShift", fallback: "When you add people to a past shift, we use the shift times as clockings.")
      }
    enum Supervisors {
      static let title = tr("Localizable", "shiftDetails_supervisors_title", fallback: "Supervisors")
      }
    enum UnknownError {
      enum Action {
        static let title = tr("Localizable", "shiftDetails_unknownError_action_title", fallback: "Try again")
        }
      static let description = tr("Localizable", "shiftDetails_unknownError_description", fallback: "Something went wrong while loading this content.")
      static let title = tr("Localizable", "shiftDetails_unknownError_title", fallback: "Something went wrong")
      }
    enum Worker {
      static let accepted = tr("Localizable", "shiftDetails_worker_accepted", fallback: "Confirmed")
      static let awaitingResponse = tr("Localizable", "shiftDetails_worker_awaitingResponse", fallback: "No response")
      static let declined = tr("Localizable", "shiftDetails_worker_declined", fallback: "Declined")
      enum NotAssigned {
        enum Action {
          static let title = tr("Localizable", "shiftDetails_worker_notAssigned_action_title", fallback: "Assign work")
          }
        static let description = tr("Localizable", "shiftDetails_worker_notAssigned_description", fallback: "Assign work to any of the following available people")
        static let title = tr("Localizable", "shiftDetails_worker_notAssigned_title", fallback: "No work assigned yet")
        }
      enum NotRequested {
        enum Action {
          static let title = tr("Localizable", "shiftDetails_worker_notRequested_action_title", fallback: "Add quantity")
          }
        static let description = tr("Localizable", "shiftDetails_worker_notRequested_description", fallback: "Add number of people you need to work this shift")
        static let title = tr("Localizable", "shiftDetails_worker_notRequested_title", fallback: "No quantity added yet")
        }
      static let rejected = tr("Localizable", "shiftDetails_worker_rejected", fallback: "Rejected")
      }
    enum WorkerCard {
      static let noShow = tr("Localizable", "shiftDetails_workerCard_noShow", fallback: "No show")
      static let noShowCannotAttend = tr("Localizable", "shiftDetails_workerCard_noShowCannotAttend", fallback: "No show (cannot attend)")
      static let noShowJustified = tr("Localizable", "shiftDetails_workerCard_noShowJustified", fallback: "No show (justified)")
      static let noShowUnjustified = tr("Localizable", "shiftDetails_workerCard_noShowUnjustified", fallback: "No show (not justified)")
      }
    enum WorkersCapacity {
      static let assigned = tr("Localizable", "shiftDetails_workersCapacity_assigned", fallback: "People assigned")
      static let attended = tr("Localizable", "shiftDetails_workersCapacity_attended", fallback: "People attended")
      static let confirmed = tr("Localizable", "shiftDetails_workersCapacity_confirmed", fallback: "People confirmed")
      static let notified = tr("Localizable", "shiftDetails_workersCapacity_notified", fallback: "People notified")
      static let requested = tr("Localizable", "shiftDetails_workersCapacity_requested", fallback: "People required")
      }
    enum WorkersList {
      static let title = tr("Localizable", "shiftDetails_workersList_title", fallback: "Assigned")
      }
    static let workersWarningDescription = tr("Localizable", "shiftDetails_workersWarningDescription", fallback: "These people have not been notified yet. Publish the shift to let them know they’re working.")
    }
  enum ShiftHistory {
    enum ApprovalStatus {
      static let approved = tr("Localizable", "shiftHistory_approvalStatus_approved", fallback: "Hours approved")
      static let rejected = tr("Localizable", "shiftHistory_approvalStatus_rejected", fallback: "Hours rejected")
      }
    enum OperationType {
      static let finishTimeUpdated = tr("Localizable", "shiftHistory_operationType_finishTimeUpdated", fallback: "Finish time updated")
      static let startAndFinishUpdated = tr("Localizable", "shiftHistory_operationType_startAndFinishUpdated", fallback: "Start & finish time updated")
      static let startTimeUpdated = tr("Localizable", "shiftHistory_operationType_startTimeUpdated", fallback: "Start time updated")
      static let timeRounded = tr("Localizable", "shiftHistory_operationType_timeRounded", fallback: "Worked hours rounded")
      }
    static let title = tr("Localizable", "shiftHistory_title", fallback: "Shift history")
    }
  enum ShiftInvitations {
    enum AssignmentType {
      static let title = tr("Localizable", "shiftInvitations_assignmentType_title", fallback: "Assignment type")
      }
    enum CreateShift {
      enum WorkersPicker {
        static func title(_ localized_format_key: Int) -> String {
            tr("Plurals", "shiftInvitations_createShift_workersPicker_title", localized_format_key, fallback: "%d invites")
        }
        }
      }
    static let fixedAssignement = tr("Localizable", "shiftInvitations_fixedAssignement", fallback: "Fixed assignment")
    enum FixedAssignement {
      static let description = tr("Localizable", "shiftInvitations_fixedAssignement_description", fallback: "Attendance is mandatory, people must confirm attendance.")
      }
    static let openInvite = tr("Localizable", "shiftInvitations_openInvite", fallback: "Open invite")
    enum OpenInvite {
      static let description = tr("Localizable", "shiftInvitations_openInvite_description", fallback: "Attendance is optional. Send invites to anyone in your pool and the first to accept is assigned.")
      }
    static let sendInvites = tr("Localizable", "shiftInvitations_sendInvites", fallback: "Send Invites")
    enum SendInvites {
      enum Confirmation {
        static let description = tr("Localizable", "shiftInvitations_sendInvites_confirmation_description", fallback: "Once you send invites, everyone selected will be asked to respond.")
        static let title = tr("Localizable", "shiftInvitations_sendInvites_confirmation_title", fallback: "Send Invites?")
        }
      }
    static let sendMoreInvites = tr("Localizable", "shiftInvitations_sendMoreInvites", fallback: "Send more invites")
    enum ShiftDetails {
      enum DeleteDialog {
        static func description(_ localized_format_key: Int) -> String {
            tr("Plurals", "shiftInvitations_shiftDetails_deleteDialog_description", localized_format_key, fallback: "You're about to delete a shift with %d people confirmed. This cannot be undone. Be certain before hitting delete.")
        }
        }
      enum DeleteFailure {
        enum Snackbar {
          static let subtitle = tr("Localizable", "shiftInvitations_shiftDetails_deleteFailure_snackbar_subtitle", fallback: "We're sorry, we couldn't delete the shift. Please try again.")
          }
        }
      enum DeleteSuccess {
        enum Snackbar {
          static let subtitle = tr("Localizable", "shiftInvitations_shiftDetails_deleteSuccess_snackbar_subtitle", fallback: "People invited have been notified")
          static let title = tr("Localizable", "shiftInvitations_shiftDetails_deleteSuccess_snackbar_title", fallback: "Shift deleted")
          }
        }
      enum Draft {
        enum Empty {
          static let button = tr("Localizable", "shiftInvitations_shiftDetails_draft_empty_button", fallback: "Invite people")
          static let description = tr("Localizable", "shiftInvitations_shiftDetails_draft_empty_description", fallback: "Start choosing people and invite them to this shift")
          static let title = tr("Localizable", "shiftInvitations_shiftDetails_draft_empty_title", fallback: "There is nobody here")
          }
        }
      enum ExpiredModal {
        static func description(_ p0: String, _ p1: String) -> String {
            tr("Localizable", "shiftInvitations_shiftDetails_expiredModal_description", p0, p1, fallback: "You have %@ of %@ people required for this shift.")
        }
        static let title = tr("Localizable", "shiftInvitations_shiftDetails_expiredModal_title", fallback: "Open invite closed")
        }
      enum FilledModal {
        static let description = tr("Localizable", "shiftInvitations_shiftDetails_filledModal_description", fallback: "You have all the people you need. Nice one.")
        static let title = tr("Localizable", "shiftInvitations_shiftDetails_filledModal_title", fallback: "Shift filled")
        }
      enum InvitesSent {
        static let subtitle = tr("Localizable", "shiftInvitations_shiftDetails_invitesSent_subtitle", fallback: "People will start confirming soon.")
        static let title = tr("Localizable", "shiftInvitations_shiftDetails_invitesSent_title", fallback: "Invites sent")
        }
      enum InvitesSentSuccessfully {
        static let subtitle = tr("Localizable", "shiftInvitations_shiftDetails_invitesSentSuccessfully_subtitle", fallback: "We're notified these people.")
        static func title(_ localized_format_key: Int) -> String {
            tr("Plurals", "shiftInvitations_shiftDetails_invitesSentSuccessfully_title", localized_format_key, fallback: "%d invites sent successfully")
        }
        }
      enum Panic {
        static func expiration(_ p0: String) -> String {
            tr("Localizable", "shiftInvitations_shiftDetails_panic_expiration", p0, fallback: "%@ remaining. Invites will expire once the shift starts.")
        }
        static let sendMoreInvites = tr("Localizable", "shiftInvitations_shiftDetails_panic_sendMoreInvites", fallback: "Send more invites. You’ve not met your confirmed target yet.")
        }
      }
    static let yesSendInvites = tr("Localizable", "shiftInvitations_yesSendInvites", fallback: "Yes, send invites")
    }
  enum ShiftList {
    enum EndListInfo {
      static let button = tr("Localizable", "shiftList_endListInfo_button", fallback: "Create a shift")
      static let description = tr("Localizable", "shiftList_endListInfo_description", fallback: "There are no more shifts scheduled for the future. Start creating upcoming shifts.")
      enum Past {
        static let description = tr("Localizable", "shiftList_endListInfo_past_description", fallback: "There are no more existing shifts")
        static let title = tr("Localizable", "shiftList_endListInfo_past_title", fallback: "Nothing else was planned")
        }
      static let title = tr("Localizable", "shiftList_endListInfo_title", fallback: "Nothing else is planned")
      }
    enum OptimisticCreation {
      enum PublishedSnackBar {
        static let description = tr("Localizable", "shiftList_optimisticCreation_publishedSnackBar_description", fallback: "The people you’ve assigned to work have been notified.")
        }
      enum SavedSnackBar {
        static func description(_ localized_format_key: Int) -> String {
            tr("Plurals", "shiftList_optimisticCreation_savedSnackBar_description", localized_format_key, fallback: "Remember to publish them to notify everyone that they’re working.")
        }
        }
      }
    enum OptimisticUpdate {
      enum ActionWarning {
        static let description = tr("Localizable", "shiftList_optimisticUpdate_actionWarning_description", fallback: "This may take a few seconds.")
        static let title = tr("Localizable", "shiftList_optimisticUpdate_actionWarning_title", fallback: "Shift creation in progress")
        }
      }
    static let shiftsToManage = tr("Localizable", "shiftList_shiftsToManage", fallback: "Shifts to manage")
    enum StickyHeader {
      static let emptyDay = tr("Localizable", "shiftList_stickyHeader_emptyDay", fallback: "No shifts sheduled")
      static let todayEmptyDay = tr("Localizable", "shiftList_stickyHeader_todayEmptyDay", fallback: "No shifts scheduled for today")
      }
    static let title = tr("Localizable", "shiftList_title", fallback: "Shifts")
    }
  enum ShiftSeries {
    static func label(_ p0: String, _ p1: String) -> String {
        tr("Localizable", "shiftSeries_label", p0, p1, fallback: "Repeats every %@ on %@")
    }
    }
  enum Shiftcreation {
    enum People {
      enum Secondarybutton {
        static let publish = tr("Localizable", "shiftcreation_people_secondarybutton_publish", fallback: "Publish")
        }
      }
    }
  enum Shifts {
    static let approveHours = tr("Localizable", "shifts_approveHours", fallback: "Approve hours")
    static let assignWorkers = tr("Localizable", "shifts_assignWorkers", fallback: "Assign work")
    enum EmptyList {
      static let button = tr("Localizable", "shifts_emptyList_button", fallback: "Create your first shift")
      static let description = tr("Localizable", "shifts_emptyList_description", fallback: "Create upcoming shifts and publish them to start notifying people.")
      static let title = tr("Localizable", "shifts_emptyList_title", fallback: "Start creating shifts")
      }
    enum Emptylist {
      enum Bottom {
        enum Clickable {
          static let text = tr("Localizable", "shifts_emptylist_bottom_clickable_text", fallback: "Visit our Help Center")
          }
        static let hyperlink = tr("Localizable", "shifts_emptylist_bottom_hyperlink", fallback: "https://jobandtalent-clients.kustomer.help/lang/en_us/")
        static func text(_ p0: String) -> String {
            tr("Localizable", "shifts_emptylist_bottom_text", p0, fallback: "Got questions? %@")
        }
        }
      }
    enum Error {
      static let action = tr("Localizable", "shifts_error_action", fallback: "Retry")
      }
    static let noShifts = tr("Localizable", "shifts_noShifts", fallback: "No shifts or tracked hours")
    static let publishShift = tr("Localizable", "shifts_publishShift", fallback: "Publish shift")
    static let requestWorkers = tr("Localizable", "shifts_requestWorkers", fallback: "Add quantity")
    static let title = tr("Localizable", "shifts_title", fallback: "Shifts")
    }
  enum ShiftsPlanning {
    enum LastWeek {
      static let buttonTitle = tr("Localizable", "shiftsPlanning_lastWeek_buttonTitle", fallback: "Ok, go back to current week")
      static let message = tr("Localizable", "shiftsPlanning_lastWeek_message", fallback: "You can manage shifts until 2 months ahead")
      static let title = tr("Localizable", "shiftsPlanning_lastWeek_title", fallback: "Calendar view ends here")
      }
    static let thisWeek = tr("Localizable", "shiftsPlanning_thisWeek", fallback: "This week")
    }
  enum SignOutConfirmationDialog {
    static let confirmButton = tr("Localizable", "signOutConfirmationDialog_confirmButton", fallback: "Log out")
    static let title = tr("Localizable", "signOutConfirmationDialog_title", fallback: "Do you want to logout?")
    }
  enum Snackbar {
    enum Error {
      static let deletebreak = tr("Localizable", "snackbar_error_deletebreak", fallback: "We couldn’t delete the break. Please try again. ")
      static let updatebreak = tr("Localizable", "snackbar_error_updatebreak", fallback: "We couldn’t update the break. Please try again. ")
      }
    enum LinkexpiredError {
      static let title = tr("Localizable", "snackbar_linkexpiredError_title", fallback: "Link expired or already used")
      }
    enum SuccessChangePassword {
      static let subtitle = tr("Localizable", "snackbar_successChangePassword_subtitle", fallback: "You can now log in to your account.")
      static let title = tr("Localizable", "snackbar_successChangePassword_title", fallback: "Password set")
      }
    enum UnknownError {
      static let subtitle = tr("Localizable", "snackbar_unknownError_subtitle", fallback: "Please try again later")
      static let title = tr("Localizable", "snackbar_unknownError_title", fallback: "Something went wrong")
      }
    }
  enum StarRatingView {
    enum Value {
      static let 1 = tr("Localizable", "starRatingView_value_1", fallback: "Bad")
      static let 2 = tr("Localizable", "starRatingView_value_2", fallback: "Poor")
      static let 3 = tr("Localizable", "starRatingView_value_3", fallback: "Needs improvement")
      static let 4 = tr("Localizable", "starRatingView_value_4", fallback: "Good")
      static let 5 = tr("Localizable", "starRatingView_value_5", fallback: "Excellent")
      }
    }
  enum Stats {
    enum Button {
      static let retry = tr("Localizable", "stats_button_retry", fallback: "Retry")
      }
    enum Chart {
      static let axisRelationship = tr("Localizable", "stats_chart_axisRelationship", fallback: "People needed for the shift")
      enum Legend {
        static let planned = tr("Localizable", "stats_chart_legend_planned", fallback: "Planned")
        static let worked = tr("Localizable", "stats_chart_legend_worked", fallback: "Actual")
        }
      static let xAxis = tr("Localizable", "stats_chart_xAxis", fallback: "Time")
      static let yAxis = tr("Localizable", "stats_chart_yAxis", fallback: "People")
      }
    enum Error {
      static let cantLoadData = tr("Localizable", "stats_error_cantLoadData", fallback: "Sorry, we could not load the data.")
      }
    enum Kpis {
      static let fulfilmentRate = tr("Localizable", "stats_kpis_fulfilmentRate", fallback: "attendance rate")
      static func fulfilmentRateDate(_ p0: String) -> String {
          tr("Localizable", "stats_kpis_fulfilmentRateDate", p0, fallback: "attendance rate • %@")
      }
      static let peopleAttended = tr("Localizable", "stats_kpis_peopleAttended", fallback: "people attended")
      static let peopleAttending = tr("Localizable", "stats_kpis_peopleAttending", fallback: "people attending so far")
      static let peoplePlanned = tr("Localizable", "stats_kpis_peoplePlanned", fallback: "people planned")
      static func previousPeriodDifference(_ p0: String, _ p1: String, _ p2: String) -> String {
          tr("Localizable", "stats_kpis_previousPeriodDifference", p0, p1, p2, fallback: "%@ %@ p.p. vs %@")
      }
      enum PreviousPeriodDifference {
        static func android(_ p0: String, _ p1: String) -> String {
            tr("Localizable", "stats_kpis_previousPeriodDifference_android", p0, p1, fallback: "%@ p.p. vs %@")
        }
        }
      static func sameAsPreviousPeriod(_ p0: String) -> String {
          tr("Localizable", "stats_kpis_sameAsPreviousPeriod", p0, fallback: "Same as %@")
      }
      }
    enum Message {
      static let doShiftsForDay = tr("Localizable", "stats_message_doShiftsForDay", fallback: "No shifts planned for this day")
      }
    enum NoShows {
      enum Worker {
        static let attendanceRate = tr("Localizable", "stats_noShows_worker_attendanceRate", fallback: "att. rate")
        static func hoursWorked(_ p0: Int) -> String {
            tr("Localizable", "stats_noShows_worker_hoursWorked", p0, fallback: "%dh worked")
        }
        static let inactive = tr("Localizable", "stats_noShows_worker_inactive", fallback: "Inactive")
        static let noShows = tr("Localizable", "stats_noShows_worker_noShows", fallback: "No shows")
        static func numberOfShifts(_ p0: Int) -> String {
            tr("Localizable", "stats_noShows_worker_numberOfShifts", p0, fallback: "in %d shifts")
        }
        }
      }
    enum PeriodSelector {
      static let today = tr("Localizable", "stats_periodSelector_today", fallback: "Today")
      }
    enum Tab {
      static let title = tr("Localizable", "stats_tab_title", fallback: "Stats")
      }
    enum WorkerFilters {
      static func assignedFilter(_ p0: Int) -> String {
          tr("Localizable", "stats_workerFilters_assignedFilter", p0, fallback: "Assigned (%d)")
      }
      static func attendedFilter(_ p0: Int) -> String {
          tr("Localizable", "stats_workerFilters_attendedFilter", p0, fallback: "Attended (%d)")
      }
      static func noShowsFilter(_ p0: Int) -> String {
          tr("Localizable", "stats_workerFilters_noShowsFilter", p0, fallback: "No shows (%d)")
      }
      }
    }
  enum Teo {
    enum Chat {
      enum Chatbox {
        static let empty = tr("Localizable", "teo_chat_chatbox_empty", fallback: "Ask me something...")
        }
      enum Description {
        static let pastlimit = tr("Localizable", "teo_chat_description_pastlimit", fallback: "We’re unable to show you previous messages. ")
        static let undermaintainance = tr("Localizable", "teo_chat_description_undermaintainance", fallback: "He’ll be back faster, stronger and sharper
in a couple of minutes.")
        }
      enum Dislikecomment {
        static let askfeedback = tr("Localizable", "teo_chat_dislikecomment_askfeedback", fallback: "I’m sorry this wasn’t helpful. Could you tell me why?")
        enum Feedback {
          static let notaccurate = tr("Localizable", "teo_chat_dislikecomment_feedback_notaccurate", fallback: "Not accurate")
          static let notasking = tr("Localizable", "teo_chat_dislikecomment_feedback_notasking", fallback: "Not what I’m asking")
          static let other = tr("Localizable", "teo_chat_dislikecomment_feedback_other", fallback: "Other")
          static let received = tr("Localizable", "teo_chat_dislikecomment_feedback_received", fallback: "Thanks for the feedback. It’s really useful and helps me improve. ")
          }
        }
      static let expertiseareas = tr("Localizable", "teo_chat_expertiseareas", fallback: "I can provide information about: attendance, planning, people and insights. ")
      enum Freetrial {
        enum Button {
          static let upgrade = tr("Localizable", "teo_chat_freetrial_button_upgrade", fallback: "Request now")
          }
        static let ended = tr("Localizable", "teo_chat_freetrial_ended", fallback: "You've run out of free responses. Ask your admin to reactivate Teo.")
        enum Hint {
          static let requestreceived = tr("Localizable", "teo_chat_freetrial_hint_requestreceived", fallback: "We've received your request. We'll be in touch shortly.")
          }
        }
      static func greeting(_ p0: String) -> String {
          tr("Localizable", "teo_chat_greeting", p0, fallback: "Hey %s, how can I help you?")
      }
      static let helpyou = tr("Localizable", "teo_chat_helpyou", fallback: "Can I help you with something else?")
      static let internetback = tr("Localizable", "teo_chat_internetback", fallback: "Your connection is back 🛜 ✅.")
      static let noinformation = tr("Localizable", "teo_chat_noinformation", fallback: "I’m sorry but I don’t have that kind of information. ")
      static let nointernet = tr("Localizable", "teo_chat_nointernet", fallback: "⚠️  It appears you’re offline. Please check your internet connection. ")
      static let notdelivered = tr("Localizable", "teo_chat_notdelivered", fallback: "Not delivered")
      enum Recommendation {
        static let help = tr("Localizable", "teo_chat_recommendation_help", fallback: "Get help to use the app")
        static let peopleabsent = tr("Localizable", "teo_chat_recommendation_peopleabsent", fallback: "Tell me who’s absent this week")
        static let peopleassigned = tr("Localizable", "teo_chat_recommendation_peopleassigned", fallback: "Show people assigned today")
        static let shiftsatrisk = tr("Localizable", "teo_chat_recommendation_shiftsatrisk", fallback: "Show me shifts at risk")
        }
      enum Title {
        static let undermaintainance = tr("Localizable", "teo_chat_title_undermaintainance", fallback: "Teo’s getting a tune-up")
        }
      static let whatelse = tr("Localizable", "teo_chat_whatelse", fallback: "Or something else?")
      }
    enum Feedback {
      enum BottomSheet {
        static let comment = tr("Localizable", "teo_feedback_bottomSheet_comment", fallback: "Comment")
        }
      enum Confirmation {
        enum Snackbar {
          static let body = tr("Localizable", "teo_feedback_confirmation_snackbar_body", fallback: "Thank you for helping us improve. ")
          static let title = tr("Localizable", "teo_feedback_confirmation_snackbar_title", fallback: "Feedback sent")
          }
        }
      }
    static let name = tr("Localizable", "teo_name", fallback: "Teo")
    enum Presentation {
      enum Button {
        static let requestaccess = tr("Localizable", "teo_presentation_button_requestaccess", fallback: "Request access to Teo")
        static let start = tr("Localizable", "teo_presentation_button_start", fallback: "Let's start")
        }
      enum Chip {
        static let beta = tr("Localizable", "teo_presentation_chip_beta", fallback: "BETA")
        }
      static let description = tr("Localizable", "teo_presentation_description", fallback: "Your Job&Talent AI assistant.")
      enum Description {
        static let askme = tr("Localizable", "teo_presentation_description_askme", fallback: "Learn more about planning, attendance, clocking, people and more. ")
        static let beta = tr("Localizable", "teo_presentation_description_beta", fallback: "Teo is still learning. He may not be an expert yet, but he’s improving every day. Try him for free for a limited time.")
        static let chat = tr("Localizable", "teo_presentation_description_chat", fallback: "Ask for my help any time, any day.")
        static let tips = tr("Localizable", "teo_presentation_description_tips", fallback: "I’ll help you enhance workforce performance to maximize productivity.")
        }
      enum Subtitle {
        static let askme = tr("Localizable", "teo_presentation_subtitle_askme", fallback: "Ask me questions")
        }
      static let title = tr("Localizable", "teo_presentation_title", fallback: "Hey,  I’m Teo")
      enum Title {
        static let chat = tr("Localizable", "teo_presentation_title_chat", fallback: "Chat 24/7")
        static let tips = tr("Localizable", "teo_presentation_title_tips", fallback: "Get tips and insights")
        }
      }
    }
  enum TermsAndConditions {
    static func description(_ p0: String, _ p1: String) -> String {
        tr("Localizable", "termsAndConditions_description", p0, p1, fallback: "By logging in, you agree to Job&Talent Business' %@ and %@")
    }
    static let url = tr("Localizable", "termsAndConditions_url", fallback: "https://www.jobandtalent.co.uk/legal/terms-of-use-companies")
    }
  static let termsOfService = tr("Localizable", "termsOfService", fallback: "Terms of Use")
  enum UpcomingPlacements {
    static let active = tr("Localizable", "upcomingPlacements_active", fallback: "Active")
    static let upcoming = tr("Localizable", "upcomingPlacements_upcoming", fallback: "Upcoming")
    }
  enum UserProfile {
    enum AttendanceRatedKpi {
      static func amount(_ p0: Int) -> String {
          tr("Localizable", "userProfile_attendanceRatedKpi_amount", p0, fallback: "%d shifts - last 30 days")
      }
      static let badHint = tr("Localizable", "userProfile_attendanceRatedKpi_badHint", fallback: "To improve this rate, try assigning people with higher response rates and attendance scores. You can also encourage people to use the app to confirm shifts and then actually attend.")
      static let description = tr("Localizable", "userProfile_attendanceRatedKpi_description", fallback: "This shows how well attended your shifts are. It compares the number of people you assigned to the number that actually worked.")
      static let goodHint = tr("Localizable", "userProfile_attendanceRatedKpi_goodHint", fallback: "Great work. Your shifts are well attended. ")
      static let rateLabel = tr("Localizable", "userProfile_attendanceRatedKpi_rateLabel", fallback: "Attended")
      static let title = tr("Localizable", "userProfile_attendanceRatedKpi_title", fallback: "Shift attendance rate")
      }
    enum EditPhoto {
      static let button = tr("Localizable", "userProfile_editPhoto_button", fallback: "Edit")
      enum Menu {
        static let chooseAPicture = tr("Localizable", "userProfile_editPhoto_menu_chooseAPicture", fallback: "Choose a picture")
        static let takeAPicture = tr("Localizable", "userProfile_editPhoto_menu_takeAPicture", fallback: "Take a picture")
        static let title = tr("Localizable", "userProfile_editPhoto_menu_title", fallback: "Edit profile picture")
        }
      enum MissingAccess {
        enum Button {
          static let allowTitle = tr("Localizable", "userProfile_editPhoto_missingAccess_button_allowTitle", fallback: "Allow access")
          }
        }
      enum Preview {
        enum Button {
          static let changePhotoTitle = tr("Localizable", "userProfile_editPhoto_preview_button_changePhotoTitle", fallback: "Change photo")
          static let looksGoodTitle = tr("Localizable", "userProfile_editPhoto_preview_button_looksGoodTitle", fallback: "Looks good")
          }
        enum Confirmation {
          enum Button {
            static let doNotSaveTitle = tr("Localizable", "userProfile_editPhoto_preview_confirmation_button_doNotSaveTitle", fallback: "Do not save")
            static let saveNewPictureTitle = tr("Localizable", "userProfile_editPhoto_preview_confirmation_button_saveNewPictureTitle", fallback: "Save new picture")
            }
          static let description = tr("Localizable", "userProfile_editPhoto_preview_confirmation_description", fallback: "If you do not save, you’ll lose your changes.")
          static let title = tr("Localizable", "userProfile_editPhoto_preview_confirmation_title", fallback: "Leave without saving profile picture?")
          }
        }
      enum UploadFailure {
        static let description = tr("Localizable", "userProfile_editPhoto_uploadFailure_description", fallback: "We could not upload your photo. Please try again.")
        static let title = tr("Localizable", "userProfile_editPhoto_uploadFailure_title", fallback: "Something went wrong ")
        }
      enum UploadSuccess {
        static let description = tr("Localizable", "userProfile_editPhoto_uploadSuccess_description", fallback: "We’ve successfully updated your picture.")
        static let title = tr("Localizable", "userProfile_editPhoto_uploadSuccess_title", fallback: "Profile picture saved")
        }
      }
    enum Kpis {
      static let attendance = tr("Localizable", "userProfile_kpis_attendance", fallback: "Attendance")
      static let noRatings = tr("Localizable", "userProfile_kpis_noRatings", fallback: "No ratings yet")
      static let noShifts = tr("Localizable", "userProfile_kpis_noShifts", fallback: "No shifts yet")
      static func numberOfPeople(_ p0: Int) -> String {
          tr("Localizable", "userProfile_kpis_numberOfPeople", p0, fallback: "%d people")
      }
      static func numberOfRatings(_ p0: Int) -> String {
          tr("Localizable", "userProfile_kpis_numberOfRatings", p0, fallback: "%d ratings")
      }
      static func numberOfShifts(_ localized_format_key: Int) -> String {
          tr("Plurals", "userProfile_kpis_numberOfShifts", localized_format_key, fallback: "%d shifts")
      }
      static let peopleRated = tr("Localizable", "userProfile_kpis_peopleRated", fallback: "People rated")
      static let satisfaction = tr("Localizable", "userProfile_kpis_satisfaction", fallback: "Satisfaction")
      }
    enum PeopleRatedKpi {
      static func amount(_ p0: Int) -> String {
          tr("Localizable", "userProfile_peopleRatedKpi_amount", p0, fallback: "%d people - last 30 days")
      }
      static let badHint = tr("Localizable", "userProfile_peopleRatedKpi_badHint", fallback: "You have room to improve. Be sure to give ratings each shift. It’ll boost performance.")
      static let description = tr("Localizable", "userProfile_peopleRatedKpi_description", fallback: "This shows how many people you’re rating. Ratings motivate top performers and nudge others to improve. They also help other supervisors know who’s performing well.")
      static let goodHint = tr("Localizable", "userProfile_peopleRatedKpi_goodHint", fallback: "Nice job. You’re great at rating people.")
      static let rateLabel = tr("Localizable", "userProfile_peopleRatedKpi_rateLabel", fallback: "Rated")
      static let title = tr("Localizable", "userProfile_peopleRatedKpi_title", fallback: "People you've rated")
      }
    enum PersonalInformation {
      static let email = tr("Localizable", "userProfile_personalInformation_email", fallback: "Email")
      static let fullName = tr("Localizable", "userProfile_personalInformation_fullName", fallback: "Full name")
      static let phone = tr("Localizable", "userProfile_personalInformation_phone", fallback: "Cell phone")
      static let title = tr("Localizable", "userProfile_personalInformation_title", fallback: "Personal information")
      }
    enum WorkplaceAddress {
      static let noMapAppFoundError = tr("Localizable", "userProfile_workplaceAddress_noMapAppFoundError", fallback: "No map apps were found. Please, install a maps application to proceed.")
      }
    }
  enum VacancyRequestDetails {
    static let contractJustification = tr("Localizable", "vacancyRequestDetails_contractJustification", fallback: "Contract justification")
    static let contractType = tr("Localizable", "vacancyRequestDetails_contractType", fallback: "Contract type")
    static func createdOn(_ p0: String) -> String {
        tr("Localizable", "vacancyRequestDetails_createdOn", p0, fallback: "Created on %s")
    }
    static let dates = tr("Localizable", "vacancyRequestDetails_dates", fallback: "Dates")
    static func id(_ p0: String) -> String {
        tr("Localizable", "vacancyRequestDetails_id", p0, fallback: "ID %s")
    }
    enum NewRequestError {
      static let description = tr("Localizable", "vacancyRequestDetails_newRequestError_description", fallback: "We're sorry, there was an error. Please try again.")
      static let title = tr("Localizable", "vacancyRequestDetails_newRequestError_title", fallback: "Request not sent")
      }
    static let payRate = tr("Localizable", "vacancyRequestDetails_payRate", fallback: "Pay rate")
    static let peopleNeeded = tr("Localizable", "vacancyRequestDetails_peopleNeeded", fallback: "People needed")
    static let timetable = tr("Localizable", "vacancyRequestDetails_timetable", fallback: "Timetable")
    }
  enum VacancyRequests {
    enum Created {
      static let action = tr("Localizable", "vacancyRequests_created_action", fallback: "OK, great")
      static let description = tr("Localizable", "vacancyRequests_created_description", fallback: "We’ve received your request and will confirm receipt by email. Your requests appear in <b>Hiring</b> once we start working on it.")
      static let title = tr("Localizable", "vacancyRequests_created_title", fallback: "Request sent")
      }
    enum Empty {
      static let actionTitle = tr("Localizable", "vacancyRequests_empty_actionTitle", fallback: "Get started")
      static let description = tr("Localizable", "vacancyRequests_empty_description", fallback: "Submit a vacancy request for more people")
      static let title = tr("Localizable", "vacancyRequests_empty_title", fallback: "Hire more people")
      }
    static let hint = tr("Localizable", "vacancyRequests_hint", fallback: "Requests appear here once we start working on them. If you need to know the status of a request, please contact your Job&Talent account manager.")
    enum JobCard {
      static func peopleNeeded(_ localized_format_key: Int) -> String {
          tr("Plurals", "vacancyRequests_jobCard_peopleNeeded", localized_format_key, fallback: "%1$d people needed")
      }
      static func startToFinish(_ p0: String, _ p1: String) -> String {
          tr("Localizable", "vacancyRequests_jobCard_startToFinish", p0, p1, fallback: "%@ to %@")
      }
      }
    static let title = tr("Localizable", "vacancyRequests_title", fallback: "Hiring")
    }
  enum Virtual {
    enum Ongoing {
      enum Shift {
        static func title(_ p0: Int) -> String {
            tr("Localizable", "virtual_ongoing_shift_title", p0, fallback: "%d unassigned workers")
        }
        }
      }
    enum Shift {
      static let title = tr("Localizable", "virtual_shift_title", fallback: "Unassigned workers")
      }
    }
  enum VirtualShift {
    static let label = tr("Localizable", "virtualShift_label", fallback: "All day")
    enum Title {
      static let singular = tr("Localizable", "virtualShift_title_singular", fallback: "Unassigned worker")
      }
    }
  enum Worker {
    enum List {
      enum Empty {
        static let description = tr("Localizable", "worker_list_empty_description", fallback: "Once people are added, they'll appear here in a list.")
        static let title = tr("Localizable", "worker_list_empty_title", fallback: "People not added yet")
        }
      }
    enum NoRole {
      static let label = tr("Localizable", "worker_noRole_label", fallback: "No roles assigned")
      }
    enum Profile {
      enum End {
        enum Bottomsheet {
          enum Inputselect {
            static let enddate = tr("Localizable", "worker_profile_end_bottomsheet_inputselect_enddate", fallback: "End date")
            static let startdate = tr("Localizable", "worker_profile_end_bottomsheet_inputselect_startdate", fallback: "Replacement’s start date")
            enum Toggle {
              static let replace = tr("Localizable", "worker_profile_end_bottomsheet_inputselect_toggle_replace", fallback: "Replace worker")
              }
            }
          enum Reasons {
            static let title = tr("Localizable", "worker_profile_end_bottomsheet_reasons_title", fallback: "Reason")
            }
          static let title = tr("Localizable", "worker_profile_end_bottomsheet_title", fallback: "Request to end job")
          }
        }
      enum Extend {
        enum Bottomsheet {
          enum Inputselect {
            static let newenddate = tr("Localizable", "worker_profile_extend_bottomsheet_inputselect_newenddate", fallback: "New end date")
            }
          static let title = tr("Localizable", "worker_profile_extend_bottomsheet_title", fallback: "Request to extend")
          }
        }
      enum Hire {
        enum Bottomsheet {
          enum Inputselect {
            static let enddate = tr("Localizable", "worker_profile_hire_bottomsheet_inputselect_enddate", fallback: "End date with Job&Talent")
            }
          enum Reasons {
            static let title = tr("Localizable", "worker_profile_hire_bottomsheet_reasons_title", fallback: "Reason")
            }
          static let title = tr("Localizable", "worker_profile_hire_bottomsheet_title", fallback: "Request to hire")
          }
        }
      enum Manage {
        enum Shifts {
          enum Common {
            static let save = tr("Localizable", "worker_profile_manage_shifts_common_save", fallback: "Save")
            }
          enum Snackbar {
            enum Error {
              static let subtitle = tr("Localizable", "worker_profile_manage_shifts_snackbar_error_subtitle", fallback: "We're sorry, there was an error. Please try again.")
              static let title = tr("Localizable", "worker_profile_manage_shifts_snackbar_error_title", fallback: "Shifts not assigned")
              }
            enum Success {
              static func subtitle(_ p0: String) -> String {
                  tr("Localizable", "worker_profile_manage_shifts_snackbar_success_subtitle", p0, fallback: "We’ve notified %@.")
              }
              static let title = tr("Localizable", "worker_profile_manage_shifts_snackbar_success_title", fallback: "Shifts assigned successfully")
              }
            }
          }
        }
      enum Replace {
        enum Bottomsheet {
          enum Inputselect {
            static func enddate(_ p0: String) -> String {
                tr("Localizable", "worker_profile_replace_bottomsheet_inputselect_enddate", p0, fallback: "End date for %@")
            }
            static let replacementdate = tr("Localizable", "worker_profile_replace_bottomsheet_inputselect_replacementdate", fallback: "Replacement’s start date")
            }
          enum Reasons {
            static let title = tr("Localizable", "worker_profile_replace_bottomsheet_reasons_title", fallback: "Reason")
            }
          static let title = tr("Localizable", "worker_profile_replace_bottomsheet_title", fallback: "Request to replace")
          }
        }
      enum Service {
        enum Actions {
          enum Bottomsheet {
            enum People {
              static func selected(_ p0: String) -> String {
                  tr("Localizable", "worker_profile_service_actions_bottomsheet_people_selected", p0, fallback: "%@ people selected")
              }
              }
            enum Primarybutton {
              static let sendrequest = tr("Localizable", "worker_profile_service_actions_bottomsheet_primarybutton_sendrequest", fallback: "Send request")
              }
            enum Textarea {
              enum Other {
                static let specify = tr("Localizable", "worker_profile_service_actions_bottomsheet_textarea_other_specify", fallback: "Please specify")
                }
              static let placeholder = tr("Localizable", "worker_profile_service_actions_bottomsheet_textarea_placeholder", fallback: "Add a comment for your Job&Talent account manager")
              static let subtitle = tr("Localizable", "worker_profile_service_actions_bottomsheet_textarea_subtitle", fallback: "Optional")
              static let title = tr("Localizable", "worker_profile_service_actions_bottomsheet_textarea_title", fallback: "Additional information")
              }
            }
          }
        }
      enum Serviceactions {
        enum Bottomsheet {
          enum Confirmation {
            static let body = tr("Localizable", "worker_profile_serviceactions_bottomsheet_confirmation_body", fallback: "Our account team will review your request. We’ll update you shortly.")
            enum Primarybutton {
              static let ok = tr("Localizable", "worker_profile_serviceactions_bottomsheet_confirmation_primarybutton_ok", fallback: "OK, great")
              }
            static let title = tr("Localizable", "worker_profile_serviceactions_bottomsheet_confirmation_title", fallback: "We’re on it")
            }
          }
        enum Contextualmenu {
          static let end = tr("Localizable", "worker_profile_serviceactions_contextualmenu_end", fallback: "End job")
          static let extend = tr("Localizable", "worker_profile_serviceactions_contextualmenu_extend", fallback: "Extend")
          static let hire = tr("Localizable", "worker_profile_serviceactions_contextualmenu_hire", fallback: "Hire")
          static let replace = tr("Localizable", "worker_profile_serviceactions_contextualmenu_replace", fallback: "Replace")
          }
        enum Hint {
          enum Status {
            static let end = tr("Localizable", "worker_profile_serviceactions_hint_status_end", fallback: "Show details")
            static let hire = tr("Localizable", "worker_profile_serviceactions_hint_status_hire", fallback: "Show details")
            static let replace = tr("Localizable", "worker_profile_serviceactions_hint_status_replace", fallback: "Show details")
            static let showdetails = tr("Localizable", "worker_profile_serviceactions_hint_status_showdetails", fallback: "Show details")
            }
          }
        enum Reason {
          static let attendance = tr("Localizable", "worker_profile_serviceactions_reason_attendance", fallback: "Attendance issues")
          enum Cost {
            static let efficiency = tr("Localizable", "worker_profile_serviceactions_reason_cost_efficiency", fallback: "Cost efficiency")
            }
          enum Great {
            enum Team {
              static let player = tr("Localizable", "worker_profile_serviceactions_reason_great_team_player", fallback: "Great team player")
              }
            }
          enum Low {
            static let demand = tr("Localizable", "worker_profile_serviceactions_reason_low_demand", fallback: "Low demand")
            }
          static let misconduct = tr("Localizable", "worker_profile_serviceactions_reason_misconduct", fallback: "Misconduct")
          enum Op {
            static let flexibility = tr("Localizable", "worker_profile_serviceactions_reason_op_flexibility", fallback: "Operational flexibility")
            }
          static let other = tr("Localizable", "worker_profile_serviceactions_reason_other", fallback: "Other")
          enum Outstanding {
            enum Critical {
              static let expertise = tr("Localizable", "worker_profile_serviceactions_reason_outstanding_critical_expertise", fallback: "Critical expertise")
              }
            static let performance = tr("Localizable", "worker_profile_serviceactions_reason_outstanding_performance", fallback: "Outstanding performance")
            }
          enum Poor {
            static let performance = tr("Localizable", "worker_profile_serviceactions_reason_poor_performance", fallback: "Poor performance")
            }
          static let resignation = tr("Localizable", "worker_profile_serviceactions_reason_resignation", fallback: "Resignation")
          }
        enum Reasons {
          static let title = tr("Localizable", "worker_profile_serviceactions_reasons_title", fallback: "Reason")
          }
        enum Showdetail {
          enum Bottomsheet {
            enum End {
              static let title = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_end_title", fallback: "Requested to end job")
              }
            static let enddate = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_enddate", fallback: "End date")
            enum Enddate {
              static let jt = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_enddate_jt", fallback: "End date with Job&Talent")
              }
            static func enddatefor(_ p0: String) -> String {
                tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_enddatefor", p0, fallback: "End date for %@")
            }
            enum Extend {
              static let title = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_extend_title", fallback: "Requested to extend")
              }
            enum Hire {
              static let title = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_hire_title", fallback: "Requested to hire")
              }
            static let newenddate = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_newenddate", fallback: "New end date")
            static let reason = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_reason", fallback: "Reason")
            enum Replace {
              static let title = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_replace_title", fallback: "Requested to be replaced")
              static let worker = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_replace_worker", fallback: "Replace worker")
              }
            enum Replacement {
              static let startdate = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_replacement_startdate", fallback: "Replacement’s start date")
              }
            enum Requested {
              static let on = tr("Localizable", "worker_profile_serviceactions_showdetail_bottomsheet_requested_on", fallback: "Requested on")
              }
            }
          }
        }
      }
    enum Start {
      static func date(_ p0: String) -> String {
          tr("Localizable", "worker_start_date", p0, fallback: "Started on %@")
      }
      }
    }
  enum WorkerDetail {
    enum AssignmentSnackbar {
      enum Error {
        static let description = tr("Localizable", "workerDetail_assignmentSnackbar_error_description", fallback: "We're sorry, there was an error. The shift assignments were not updated.")
        static let title = tr("Localizable", "workerDetail_assignmentSnackbar_error_title", fallback: "Shifts not updated")
        }
      enum Success {
        static let description = tr("Localizable", "workerDetail_assignmentSnackbar_success_description", fallback: "We’ll notify people about published shifts, so they can accept or reject them. Remember that anyone who’s unavailable for the selected shifts will not be assigned.")
        static func title(_ localized_format_key: Int) -> String {
            tr("Plurals", "workerDetail_assignmentSnackbar_success_title", localized_format_key, fallback: "%d shifts updated")
        }
        }
      }
    }
  enum WorkerDetails {
    enum AttendanceKpi {
      static func footer(_ localized_format_key: Int) -> String {
          tr("Plurals", "workerDetails_attendanceKpi_footer", localized_format_key, fallback: "%d shifts")
      }
      static let header = tr("Localizable", "workerDetails_attendanceKpi_header", fallback: "Attendance")
      }
    enum HoursWorked {
      static func label(_ localized_format_key: Int) -> String {
          tr("Plurals", "workerDetails_hoursWorked_label", localized_format_key, fallback: "%d hours worked")
      }
      }
    enum RatingKpi {
      static let header = tr("Localizable", "workerDetails_ratingKpi_header", fallback: "Performance")
      }
    enum ResponseKpi {
      static let header = tr("Localizable", "workerDetails_responseKpi_header", fallback: "Response")
      }
    }
  enum WorkerDetailsScreen {
    enum Approve {
      enum Hours {
        static let button = tr("Localizable", "workerDetailsScreen_approve_hours_button", fallback: "Approve hours")
        }
      }
    enum Clock {
      enum Out {
        enum Before {
          enum Clock {
            static let in = tr("Localizable", "workerDetailsScreen_clock_out_before_clock_in", fallback: "The finish time must be after the start time")
            }
          }
        }
      }
    enum Clocking {
      enum Break {
        enum Form {
          static let title = tr("Localizable", "workerDetailsScreen_clocking_break_form_title", fallback: "Break")
          }
        }
      enum Finish {
        enum Form {
          static let title = tr("Localizable", "workerDetailsScreen_clocking_finish_form_title", fallback: "Finish")
          }
        }
      enum Start {
        enum Form {
          static let title = tr("Localizable", "workerDetailsScreen_clocking_start_form_title", fallback: "Start")
          }
        }
      }
    enum Reject {
      static let button = tr("Localizable", "workerDetailsScreen_reject_button", fallback: "Reject")
      }
    enum Save {
      enum Changes {
        static let button = tr("Localizable", "workerDetailsScreen_save_changes_button", fallback: "Save changes")
        }
      }
    enum Shift {
      enum Exceeds {
        static let limit = tr("Localizable", "workerDetailsScreen_shift_exceeds_limit", fallback: "Shift exceeds limit of 12 hours.")
        }
      }
    enum Toolbar {
      static let title = tr("Localizable", "workerDetailsScreen_toolbar_title", fallback: "Attendance")
      }
    enum Total {
      enum Paid {
        static let hours = tr("Localizable", "workerDetailsScreen_total_paid_hours", fallback: "Total hours")
        }
      }
    }
  enum WorkerList {
    static let absent = tr("Localizable", "workerList_absent", fallback: "No clocking")
    static let assigned = tr("Localizable", "workerList_assigned", fallback: "Assigned")
    enum Clocking {
      static let hoursApproved = tr("Localizable", "workerList_clocking_hoursApproved", fallback: "Hours approved")
      static let missingFinish = tr("Localizable", "workerList_clocking_missingFinish", fallback: "Incomplete clocking")
      static let onSite = tr("Localizable", "workerList_clocking_onSite", fallback: "On site")
      static let worked = tr("Localizable", "workerList_clocking_worked", fallback: "Worked")
      }
    static let hoursRejected = tr("Localizable", "workerList_hoursRejected", fallback: "Hours rejected")
    static let missingStart = tr("Localizable", "workerList_missingStart", fallback: "Incomplete clocking")
    }
  enum WorkerSatisfaction {
    static let description = tr("Localizable", "workerSatisfaction_description", fallback: "This shows the average satisfaction rating people have given your shifts.")
    static func numberOfRatings(_ p0: Int) -> String {
        tr("Localizable", "workerSatisfaction_numberOfRatings", p0, fallback: "%d ratings")
    }
    static let title = tr("Localizable", "workerSatisfaction_title", fallback: "Worker satisfaction")
    }
  enum Workerprofile {
    enum Performance {
      enum Body {
        enum Feedback {
          static func shift(_ p0: String) -> String {
              tr("Localizable", "workerprofile_performance_body_feedback_shift", p0, fallback: ""%@" shift")
          }
          }
        static let noratings = tr("Localizable", "workerprofile_performance_body_noratings", fallback: "Help this person improve by giving them a quick star rating.")
        enum Supervisor {
          static let you = tr("Localizable", "workerprofile_performance_body_supervisor_you", fallback: "(you)")
          }
        }
      enum Button {
        enum Body {
          static let seall = tr("Localizable", "workerprofile_performance_button_body_seall", fallback: "Show more")
          static let update = tr("Localizable", "workerprofile_performance_button_body_update", fallback: "Update feedback")
          }
        }
      enum Feedback {
        enum Subhead {
          static let improve = tr("Localizable", "workerprofile_performance_feedback_subhead_improve", fallback: "Needs to improve")
          static let well = tr("Localizable", "workerprofile_performance_feedback_subhead_well", fallback: "What they did well")
          }
        }
      enum Header {
        enum Label {
          static func ratings(_ localized_format_key: Int) -> String {
              tr("Plurals", "workerprofile_performance_header_label_ratings", localized_format_key, fallback: "%d ratings")
          }
          }
        enum Title {
          static let feedback = tr("Localizable", "workerprofile_performance_header_title_feedback", fallback: "Recent feedback")
          static let performance = tr("Localizable", "workerprofile_performance_header_title_performance", fallback: "Performance")
          }
        }
      enum Hint {
        enum Body {
          static let ratingsaved = tr("Localizable", "workerprofile_performance_hint_body_ratingsaved", fallback: "Rating saved and shared with this person. You can rate them again tomorrow. ")
          }
        }
      enum Performancegraph {
        enum Body {
          static let norecentratings = tr("Localizable", "workerprofile_performance_performancegraph_body_norecentratings", fallback: "No recent ratings. Rate this person now to help them improve.")
          }
        }
      enum Ratingmodule {
        enum Title {
          static let rate = tr("Localizable", "workerprofile_performance_ratingmodule_title_rate", fallback: "Rate this person now")
          }
        }
      enum Title {
        static let noratings = tr("Localizable", "workerprofile_performance_title_noratings", fallback: "No ratings yet")
        }
      }
    }
  enum Workers {
    enum ActiveCounter {
      static func label(_ localized_format_key: Int) -> String {
          tr("Plurals", "workers_activeCounter_label", localized_format_key, fallback: "%d active workers")
      }
      }
    enum AssignShifts {
      static let button = tr("Localizable", "workers_assignShifts_button", fallback: "Edit assignments")
      }
    enum Card {
      enum Attendance {
        static let rate = tr("Localizable", "workers_card_attendance_rate", fallback: "attendance")
        enum Rate {
          static let short = tr("Localizable", "workers_card_attendance_rate_short", fallback: "att.")
          }
        }
      enum Role {
        static let noRoles = tr("Localizable", "workers_card_role_noRoles", fallback: "No roles assigned")
        }
      enum Shifts {
        static func count(_ localized_format_key: Int) -> String {
            tr("Plurals", "workers_card_shifts_count", localized_format_key, fallback: "%d shifts")
        }
        }
      }
    enum HoursAssigned {
      static func label(_ p0: String) -> String {
          tr("Localizable", "workers_hoursAssigned_label", p0, fallback: "%@h assigned this week")
      }
      }
    enum JoiningSoon {
      static let label = tr("Localizable", "workers_joiningSoon_label", fallback: "Joining soon")
      }
    enum NewJoiner {
      static let label = tr("Localizable", "workers_newJoiner_label", fallback: "New")
      }
    enum ResultsCounter {
      static func label(_ localized_format_key: Int) -> String {
          tr("Plurals", "workers_resultsCounter_label", localized_format_key, fallback: "%d results")
      }
      }
    enum SelectPeople {
      static let title = tr("Localizable", "workers_selectPeople_title", fallback: "Select people")
      }
    enum SelectedPeopleHeader {
      static func text(_ p0: String) -> String {
          tr("Localizable", "workers_selectedPeopleHeader_text", p0, fallback: "%@ selected")
      }
      }
    enum SuccessfullyAssignedMessage {
      static let action = tr("Localizable", "workers_successfullyAssignedMessage_action", fallback: "OK, great")
      static let description = tr("Localizable", "workers_successfullyAssignedMessage_description", fallback: "We'll notify people about published shifts, so they can accept or reject them.")
      }
    enum Suggested {
      enum AlreadyRequested {
        enum ChipView {
          static let title = tr("Localizable", "workers_suggested_alreadyRequested_chipView_title", fallback: "Requested")
          }
        }
      enum DynamicLiquidity {
        enum Prefix {
          static func default(_ p0: String) -> String {
              tr("Localizable", "workers_suggested_dynamicLiquidity_prefix_default", p0, fallback: "%@")
          }
          static func filters(_ p0: String, _ p1: String) -> String {
              tr("Localizable", "workers_suggested_dynamicLiquidity_prefix_filters", p0, p1, fallback: "%@ of %@")
          }
          }
        enum Suffix {
          static func default(_ localized_format_key: Int) -> String {
              tr("Plurals", "workers_suggested_dynamicLiquidity_suffix_default", localized_format_key, fallback: "past workers")
          }
          static func filtering(_ p0: String) -> String {
              tr("Localizable", "workers_suggested_dynamicLiquidity_suffix_filtering", p0, fallback: "of %@ past workers")
          }
          static let filters = tr("Localizable", "workers_suggested_dynamicLiquidity_suffix_filters", fallback: "past workers")
          }
        }
      enum Elapsed {
        static func time(_ localized_format_key: Int) -> String {
            tr("Plurals", "workers_suggested_elapsed_time", localized_format_key, fallback: "%1$d days ago")
        }
        }
      enum Empty {
        static let subtitle = tr("Localizable", "workers_suggested_empty_subtitle", fallback: "We’ll add people who previously worked with you to this page. You’ll be able to rehire them.")
        static let title = tr("Localizable", "workers_suggested_empty_title", fallback: "No previous workers available")
        }
      enum EmptyFiltering {
        static let clear = tr("Localizable", "workers_suggested_emptyFiltering_clear", fallback: "Clear all")
        static let description = tr("Localizable", "workers_suggested_emptyFiltering_description", fallback: "Try adjusting your filters or search term to get some results.")
        static let title = tr("Localizable", "workers_suggested_emptyFiltering_title", fallback: "No results")
        }
      enum Expiration {
        static let date = tr("Localizable", "workers_suggested_expiration_date", fallback: "Worked")
        }
      enum Filter {
        static let apply = tr("Localizable", "workers_suggested_filter_apply", fallback: "Apply")
        enum Available {
          static let now = tr("Localizable", "workers_suggested_filter_available_now", fallback: "Quick rehire")
          }
        enum Empty {
          enum Placeholder {
            static let button = tr("Localizable", "workers_suggested_filter_empty_placeholder_button", fallback: "Clear all")
            static let subtitle = tr("Localizable", "workers_suggested_filter_empty_placeholder_subtitle", fallback: "We have not been able to find the workers you are looking for. ")
            static let title = tr("Localizable", "workers_suggested_filter_empty_placeholder_title", fallback: "No results")
            }
          }
        static let role = tr("Localizable", "workers_suggested_filter_role", fallback: "Role")
        enum Role {
          static let clear = tr("Localizable", "workers_suggested_filter_role_clear", fallback: "Clear all")
          enum Empty {
            static let subtitle = tr("Localizable", "workers_suggested_filter_role_empty_subtitle", fallback: "Contact your Job&Talent account manager to create roles for your workplace.")
            static let title = tr("Localizable", "workers_suggested_filter_role_empty_title", fallback: "No roles created yet")
            }
          }
        enum Supervisor {
          static let me = tr("Localizable", "workers_suggested_filter_supervisor_me", fallback: "Supervised by me")
          }
        static let unrequested = tr("Localizable", "workers_suggested_filter_unrequested", fallback: "Not requested")
        }
      static func liquidity(_ localized_format_key: Int) -> String {
          tr("Plurals", "workers_suggested_liquidity", localized_format_key, fallback: "%d past workers")
      }
      enum Profile {
        enum Action {
          static let select = tr("Localizable", "workers_suggested_profile_action_select", fallback: "Select")
          static let unselect = tr("Localizable", "workers_suggested_profile_action_unselect", fallback: "Unselect")
          }
        enum RequestFailure {
          static let title = tr("Localizable", "workers_suggested_profile_requestFailure_title", fallback: "Worker not rehired")
          }
        }
      enum Rehire {
        static let button = tr("Localizable", "workers_suggested_rehire_button", fallback: "Rehire")
        enum Dialog {
          static let no = tr("Localizable", "workers_suggested_rehire_dialog_no", fallback: "Rehire just this one")
          static let ok = tr("Localizable", "workers_suggested_rehire_dialog_ok", fallback: "Yes, rehire more")
          static let title = tr("Localizable", "workers_suggested_rehire_dialog_title", fallback: "Need to rehire more people?")
          }
        }
      enum Request {
        static let rehire = tr("Localizable", "workers_suggested_request_rehire", fallback: "Request rehire")
        }
      enum RequestConfirmation {
        static let buttonTitle = tr("Localizable", "workers_suggested_requestConfirmation_buttonTitle", fallback: "OK, thanks")
        static let description = tr("Localizable", "workers_suggested_requestConfirmation_description", fallback: "We've received your request. We'll contact you shortly.")
        static let title = tr("Localizable", "workers_suggested_requestConfirmation_title", fallback: "Hiring request sent")
        }
      enum RequestFailure {
        static let description = tr("Localizable", "workers_suggested_requestFailure_description", fallback: "We're sorry, there was an error. Please try again.")
        static let title = tr("Localizable", "workers_suggested_requestFailure_title", fallback: "People not rehired")
        }
      enum Selection {
        enum ConfirmButton {
          static let title = tr("Localizable", "workers_suggested_selection_confirmButton_title", fallback: "Request hiring")
          }
        static func selectedCount(_ localized_format_key: Int) -> String {
            tr("Plurals", "workers_suggested_selection_selectedCount", localized_format_key, fallback: "%d selected")
        }
        }
      enum Sort {
        enum Attendance {
          static let rate = tr("Localizable", "workers_suggested_sort_attendance_rate", fallback: "Highest attendance rate")
          }
        static let button = tr("Localizable", "workers_suggested_sort_button", fallback: "Sort")
        static let date = tr("Localizable", "workers_suggested_sort_date", fallback: "Most recent job (default)")
        static let hours = tr("Localizable", "workers_suggested_sort_hours", fallback: "Number of hours worked")
        static let rating = tr("Localizable", "workers_suggested_sort_rating", fallback: "Best rating")
        enum Response {
          static let rate = tr("Localizable", "workers_suggested_sort_response_rate", fallback: "Highest response rate")
          }
        static let title = tr("Localizable", "workers_suggested_sort_title", fallback: "Sort by")
        }
      static let title = tr("Localizable", "workers_suggested_title", fallback: "Hiring")
      }
    static let title = tr("Localizable", "workers_title", fallback: "People")
    enum Title {
      static func withCount(_ p0: String) -> String {
          tr("Localizable", "workers_title_withCount", p0, fallback: "People (%@)")
      }
      }
    enum Worker {
      enum Contract {
        enum Expired {
          static func on(_ p0: String) -> String {
              tr("Localizable", "workers_worker_contract_expired_on", p0, fallback: "Unavailable since %@")
          }
          }
        enum Expires {
          static func on(_ p0: String) -> String {
              tr("Localizable", "workers_worker_contract_expires_on", p0, fallback: "Available until %@")
          }
          }
        }
      }
    }
  enum WorkersAssignShifts {
    enum MultipleWorkers {
      static let title = tr("Localizable", "workersAssignShifts_multipleWorkers_title", fallback: "Assign shifts")
      }
    enum NoAvailableShiftsState {
      static let description = tr("Localizable", "workersAssignShifts_noAvailableShiftsState_description", fallback: "There are not existing shifts in the placement period of this worker")
      static let title = tr("Localizable", "workersAssignShifts_noAvailableShiftsState_title", fallback: "No shifts available")
      }
    enum SelectAllAction {
      static let title = tr("Localizable", "workersAssignShifts_selectAllAction_title", fallback: "Select all")
      }
    enum SingleWorker {
      static let title = tr("Localizable", "workersAssignShifts_singleWorker_title", fallback: "Edit assignment of people selected")
      }
    enum UnselectAllAction {
      static let title = tr("Localizable", "workersAssignShifts_unselectAllAction_title", fallback: "Unselect all")
      }
    }
  enum WorkersDetail {
    enum EmptyState {
      static let buttonTitle = tr("Localizable", "workersDetail_emptyState_buttonTitle", fallback: "Manage shifts")
      static func description(_ p0: String) -> String {
          tr("Localizable", "workersDetail_emptyState_description", p0, fallback: "%@ doesn't have any shifts yet.")
      }
      static let title = tr("Localizable", "workersDetail_emptyState_title", fallback: "Manage shifts")
      }
    enum FirstSubTab {
      static let title = tr("Localizable", "workersDetail_firstSubTab_title", fallback: "Schedule")
      }
    enum Header {
      static let noRatings = tr("Localizable", "workersDetail_header_noRatings", fallback: "No ratings")
      enum Rating {
        static func description(_ localized_format_key: Int) -> String {
            tr("Plurals", "workersDetail_header_rating_description", localized_format_key, fallback: "%d ratings")
        }
        }
      }
    enum InfoSection {
      static let role = tr("Localizable", "workersDetail_infoSection_role", fallback: "Roles")
      static let selectRole = tr("Localizable", "workersDetail_infoSection_selectRole", fallback: "Update role")
      static let subtitle1 = tr("Localizable", "workersDetail_infoSection_subtitle1", fallback: "Start")
      static let subtitle2 = tr("Localizable", "workersDetail_infoSection_subtitle2", fallback: "Finish")
      static let subtitle3 = tr("Localizable", "workersDetail_infoSection_subtitle3", fallback: "Position")
      static let title = tr("Localizable", "workersDetail_infoSection_title", fallback: "Latest job")
      }
    enum KpiSection {
      enum Assigned {
        static let description = tr("Localizable", "workersDetail_kpiSection_assigned_description", fallback: "hours assigned")
        }
      enum SecondaryAction {
        static let title = tr("Localizable", "workersDetail_kpiSection_secondaryAction_title", fallback: "Show all")
        }
      static let title = tr("Localizable", "workersDetail_kpiSection_title", fallback: "This week")
      enum Worked {
        static let description = tr("Localizable", "workersDetail_kpiSection_worked_description", fallback: "hours worked")
        }
      }
    enum NoKpis {
      static let button = tr("Localizable", "workersDetail_noKpis_button", fallback: "Understood")
      static let subtitle = tr("Localizable", "workersDetail_noKpis_subtitle", fallback: "You'll see the KPIs here when this worker gets rehire and starts having shifts assigned.")
      static let title = tr("Localizable", "workersDetail_noKpis_title", fallback: "No data")
      }
    enum RoleAssignedSnackbar {
      static let description = tr("Localizable", "workersDetail_roleAssignedSnackbar_description", fallback: "You've successfully updated the role")
      static let title = tr("Localizable", "workersDetail_roleAssignedSnackbar_title", fallback: "Role updated")
      }
    enum SecondSubTab {
      static let title = tr("Localizable", "workersDetail_secondSubTab_title", fallback: "General information")
      }
    }
  enum WorkersFilter {
    enum Ratings {
      static let noRating = tr("Localizable", "workersFilter_ratings_noRating", fallback: "No rating")
      }
    enum Section {
      static let assignedHours = tr("Localizable", "workersFilter_section_assignedHours", fallback: "Hours assigned this week")
      static let attendanceRate = tr("Localizable", "workersFilter_section_attendanceRate", fallback: "Attendance rate")
      static let position = tr("Localizable", "workersFilter_section_position", fallback: "Position")
      static let ratings = tr("Localizable", "workersFilter_section_ratings", fallback: "Ratings")
      static let status = tr("Localizable", "workersFilter_section_status", fallback: "Worker status")
      }
    enum Status {
      static let active = tr("Localizable", "workersFilter_status_active", fallback: "Active")
      static let inactive = tr("Localizable", "workersFilter_status_inactive", fallback: "Inactive")
      enum Joining {
        static let soon = tr("Localizable", "workersFilter_status_joining_soon", fallback: "Joining soon")
        }
      static let new = tr("Localizable", "workersFilter_status_new", fallback: "New")
      }
    }
  enum WorkersShifts {
    enum EmptyState {
      static let description = tr("Localizable", "workersShifts_emptyState_description", fallback: "Go to the Shifts tab to create new shifts first, then assign them to people.")
      static let title = tr("Localizable", "workersShifts_emptyState_title", fallback: "No shifts yet")
      }
    enum EmptyStateForFilter {
      static let description = tr("Localizable", "workersShifts_emptyStateForFilter_description", fallback: "Try adjusting or removing your filters to get more results.")
      static let title = tr("Localizable", "workersShifts_emptyStateForFilter_title", fallback: "No results")
      }
    enum EmptyStateForSearch {
      static let description = tr("Localizable", "workersShifts_emptyStateForSearch_description", fallback: "Try writing the shift name differently. If no results, the shift may not exist.")
      static let title = tr("Localizable", "workersShifts_emptyStateForSearch_title", fallback: "Shift not found")
      }
    static func title(_ p0: String) -> String {
        tr("Localizable", "workersShifts_title", p0, fallback: "%@'s shifts")
    }
    }
}

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
