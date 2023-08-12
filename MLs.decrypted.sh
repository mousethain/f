#!/bin/bash
#Decrypted By YADDY D PHREAKER
echo ""
echo "    _/      _/  _/     "
echo "   _/_/  _/_/  _/      "
echo "  _/  _/  _/  _/       "
echo " _/      _/  _/        "
echo "_/      _/  _/_/_/_/    "
echo ""
echo "Stabilizer V1.0 [No-Root]"
echo "By: @Kurodenshiii & @RiproG"
sleep 3
echo "Sedang eksekusi..."
sleep 3
echo""
echo "Mengatur Fstrim..."
sleep 2
set_fsrim_interval() {
settings put global fstrim_mandatory_interval 43200000
}
set_fsrim_interval > /dev/null 2>&1
echo ""
echo "Membersihkan sampah cache..."
sleep 2
rm -f /storage/emulated/0/Android/data/*/cache
rm -f /data/data/*/cache
echo ""
echo "Mengatur tweak jaringan untuk mengurangi ping jumping..."
sleep 2
setprop debug.gpu.scheduler_pre.emption 1; setprop debug.performance_schema_digests_size 9950000; setprop debug.sf.max_igbp_list_size 0; setprop debug.sf.predict_hwc_composition_strategy 1; setprop debug.sf.enable_transaction_tracing true; setprop debug.sf.vsync_reactor_ignore_present_fences false; setprop debug.gralloc.gfx_ubwc_disable false; setprop debug.mdpcomp.mixedmode.disable false; setprop debug.hwc.fbsize XRESxYRES; setprop debug.sdm.support_writeback 1; setprop debug.sdm.disable_skip_validate 1; setprop debug.sf_frame_rate_multiple_fences 999; setprop debug.sf.early.app.duration 16600000; setprop debug.sf.early.sf.duration 16600000; setprop debug.sf.earlyGl.app.duration 16600000; setprop debug.sf.earlyGl.sf.duration 16600000; setprop debug.sf.high_fps_early_gl_phase_offset_ns 9000000; setprop debug.sf.high_fps_early_phase_offset_ns 6100000; setprop debug.sf.hw 1; setprop debug.sf.perf_fps_early_gl_phase_offset_ns 12000000; setprop debug.performance_schema 1; setprop debug.performance_schema_max_memory_classes 387; setprop debug.performance_schema_max_socket_classes 10; setprop debug.composition.type mdp; setprop debug.composition.type2 gpu; setprop debug.gr.swapinterval -1; setprop debug.hwui.disabledither false; setprop debug.sf.hw 1; setprop debug.sf.enable_hgl 1; setprop debug.disable.hwacc 0; setprop debug.disable_sched_boost true; setprop debug.javafx.animation.fullspeed true; setprop debug.rs.default-CPU-driver 1; setprop debug.MB.inner.running 57; setprop debug.MB.running 16; setprop debug.hwui.render_dirty_regions false; setprop debug.hwc.bq_count 3; setprop debug.multicore.processing 1; setprop debug.hwui.disable_draw_reorder true; setprop debug.perfhudes 1; setprop debug.sf.enable_hgl 1; setprop debug.heat_suppression 0; setprop debug.dev.addfree 4; setprop debug.gfx.driver 1; setprop debug.sf.showfps 0; setprop debug.egl.hw 1; setprop debug.hwui.fps_divisor -1; setprop debug.cpurend.vsync false; setprop debug.gpurend.vsync false; setprop debug.power_management_mode pref_max; settings put global activity_manager_constants max_cached_processes=2048; settings put system pointer_speed 7; setprop debug.mdpcomp.maxpermixer 0; setprop debug.performance.tuning 1; setprop debug.hal_client_domain hal_vperf; setprop debug.cpuprio 7; setprop debug.gpuprio 7; setprop debug.hwui.target_cpu_time_percent 100; setprop debug.hwui.target_gpu_time_percent 100; setprop debug.renderthread.reduceopstasksplitting true; setprop debug.renderer.process_compound true; setprop debug.performance.disturb false; setprop debug.sf.frame_rate_multiple_threshold 999; setprop debug.sf_frame_rate_multiple_fences 999; setprop debug.egl.force_msaa false; setprop debug.egl.force_fxaa false; setprop debug.egl.force_taa false; setprop debug.egl.force_ssaa false; setprop debug.egl.force_smaa false; setprop debug.egl.native_scaling false; settings put global job_scheduler_constant 1; settings put global low_power 0; settings put global low_power_sticky 0; settings put secure sysui_tuner_version 5;
settings put secure location_providers_allowed -network
settings put secure location_providers_allowed -gps,network
settings put secure location_providers_allowed -gps
settings put secure location_providers_allowed -network
settings put secure location_mode 0
nohup ping 142.250.72.132 > /dev/null 2>&1 &
sleep 2
echo ""
echo "Mengatur tweak performa..."
sleep 2
setprop debug.sf.disable_backpressure 1; setprop debug.sf.latch_unsignaled 1; setprop debug.sf.enable_hwc_vds 0; setprop debug.sf.early_phase_offset_ns 500000; setprop debug.sf.early_app_phase_offset_ns 500000; setprop debug.sf.early_gl_phase_offset_ns 3000000; setprop debug.sf.early_gl_app_phase_offset_ns 15000000; setprop debug.sf.high_fps_early_phase_offset_ns 6100000; setprop debug.sf.high_fps_early_gl_phase_offset_ns 650000; setprop debug.sf.high_fps_late_app_phase_offset_ns 100000; setprop debug.sf.phase_offset_threshold_for_next_vsync_ns 6100000
settings put system min_refresh_rate 90.0
settings put system peak_refresh_rate 90.0
echo ""
echo "Meningkatkan kecepatan Data Seluler..."
sleep 2
settings put system net.ipv4.ipv4.tcp_ecn 0
settings put system net.ipv4.ipv4.route.flush 1
settings put system net.ipv4.ipv4.tcp_rfc1337 1
settings put system net.ipv4.ipv4.ip_no_pmtu_disc 0
settings put system net.ipv4.ipv4.tcp_sack 1
settings put system net.ipv4.ipv4.tcp_fack 1
settings put system net.ipv4.ipv4.tcp_window_scaling 1
settings put system net.ipv4.ipv4.tcp_timestamps 1
settings put system net.ipv4.ipv4.tcp_rmem=4096 39000 187000
settings put system net.ipv4.ipv4.tcp_wmem=4096 39000 187000
settings put system net.ipv4.ipv4.tcp_mem=187000 187000 187000
settings put system net.ipv4.ipv4.tcp_no_metrics_save 1
settings put system net.ipv4.ipv4.tcp_moderate_rcvbuf 1
settings put global net.ipv4.ipv4.tcp_ecn 0
settings put global net.ipv4.ipv4.route.flush 1
settings put global net.ipv4.ipv4.tcp_rfc1337 1
settings put global net.ipv4.ipv4.ip_no_pmtu_disc 0
settings put global net.ipv4.ipv4.tcp_sack 1
settings put global net.ipv4.ipv4.tcp_fack 1
settings put global net.ipv4.ipv4.tcp_window_scaling 1
settings put global net.ipv4.ipv4.tcp_timestamps 1
settings put global net.ipv4.ipv4.tcp_rmem=4096 39000 187000
settings put global net.ipv4.ipv4.tcp_wmem=4096 39000 187000
settings put global net.ipv4.ipv4.tcp_mem=187000 187000 187000
settings put global net.ipv4.ipv4.tcp_no_metrics_save 1
settings put global net.ipv4.ipv4.tcp_moderate_rcvbuf 1
echo ""
echo "Meningkatkan responsif sensitivitas layar..."
settings put system view.touch_slop=5,touch.deviceType=touchScreen,ro.min_pointer_dur=0.0000001,ro.product.multi_touch_enabled=true,device.internal=1,debug.performance.tuning=1,debug.egl.swapinterval=90,persist.dev.pm.dyn_samplingrate=1,r.setframepace=120,view.scroll_friction=0.0001,touch.pressure.scale=0.0001,touch.size.calibration=interpolated,touch.pressure.calibration=0,touch.size.scale=1.0,touch.size.bias=0 ,touch.size.isSummed=1 ,touch.orientation.calibration=0,touch.distance.calibration=0,touch.distance.scale=2,touch.coverage.calibration=0,touch.gestureMode=interpolated,touch.orientationAware=true,touch.filter.level=0,touch.pressure.source=touchScreen,touch.touchSize.calibration=geometric,touch.toolSize.calibration=geometric,touch.toolSize.areaScale=1.0,touch.toolSize.areaBias=0,touch.toolSize.linearScale=1.0,touch.toolSize.linearBias=0,touch.toolSize.isSummed=1,touchscreen.rescale=2,touch.scale=5,,DragMinSwitchSpeed=99999.0px/s,SwipeMaxWidthRatio=1,MovementSpeedRatio=1,ZoomSpeedRatio=1,SwipeTransitionAngleCosine=2.6,mot.proximity.distance=1,mot.proximity.delay=250,PointerVelocityControlParameters=1,lowThreshold=0,highThreshold=0,VirtualKeyQuietTime=0,KeyRepeatDelay=0,KeyRepeatTimeout=0,persist.vendor.qti.inputopts.enable=true,persist.vendor.qti.inputopts.movetouchslop=0.1,ro.vendor.touchfeature.gamemode.enable=true,persist.device_config.runtime_native.usap_pool_enabled=true,ro.surface_flinger.running_without_sync_framework=true,vendor.perf.gestureflingboost.enable=1,ro.surface_flinger.use_color_management=true,ro.surface_flinger.max_virtual_display_dimension=4096,ro.surface_flinger.protected_contents=true,ro.surface_flinger.has_wide_color_display=true,ro.surface_flinger.force_hwc_copy_for_virtual_displays=true
echo ""
echo "Sukses, hapus module tinggal reboot, tunggu bentar..."
sleep 3
am kill-all
echo ""
echo "Join channel telegram dulu lah bang :v"
sleep 2
am start -a android.intent.action.VIEW -d https://t.me/+oax35tz-P_EyMzI1
