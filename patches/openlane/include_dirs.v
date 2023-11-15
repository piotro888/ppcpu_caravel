From d4f12b57fe44f8b3721c1c57cb2fbb3dd465a2dc Mon Sep 17 00:00:00 2001
From: piotro888
Date: Wed, 15 Nov 2023 20:34:06 +0100
Subject: [PATCH] Support VERILOG_INCLUDE_DIRS in run_verilator tcl lint

---
 scripts/tcl_commands/synthesis.tcl | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/scripts/tcl_commands/synthesis.tcl b/scripts/tcl_commands/synthesis.tcl
index 257e4b6d7..3cac31902 100755
--- a/scripts/tcl_commands/synthesis.tcl
+++ b/scripts/tcl_commands/synthesis.tcl
@@ -308,6 +308,15 @@ proc run_verilator {} {
         lappend arg_list {*}$output_file
     }
     lappend arg_list {*}$::env(VERILOG_FILES)
+    
+    set incdirs ""
+    if { [info exists ::env(VERILOG_INCLUDE_DIRS)] } {
+        foreach incdir $::env(VERILOG_INCLUDE_DIRS) {
+            set incdirs "$incdirs +incdir+$incdir"
+        }
+    }
+    lappend arg_list {*}$incdirs
+
     lappend arg_list -Wno-fatal
     if { $::env(LINTER_RELATIVE_INCLUDES) } {
         lappend arg_list "--relative-includes"

