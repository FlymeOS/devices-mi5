.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

.field private static final INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

.field static final RELEASE_TIME:Ljava/lang/String; = "release_time"

.field static final SHOW_INCOMPATIBLE_ERROR:I = 0x1

.field static final SYSTEM_PROPERTIES_PERSIT_RELEASED:Ljava/lang/String; = "persist.sys.released"

.field private static TAG:Ljava/lang/String;

.field private static mPerformanceController:Lcom/miui/server/MiuiPerformanceController;

.field private static mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

.field private static mSystemReady:Z

.field private static sAmInstance:Lcom/android/server/am/ActivityManagerService;

.field static final sHandler:Landroid/os/Handler;

.field static sHasMetReleaseTime:Z

.field private static sMainStack:Ljava/lang/reflect/Field;

.field static sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 89
    const-class v1, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    .line 100
    :try_start_0
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "mStackSupervisor"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 101
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 102
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "scheduleDestroyAllActivities"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    .line 104
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 302
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "android.permission.CALL_PHONE"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v1, Lcom/android/server/am/ExtraActivityManagerService$1;

    invoke-direct {v1}, Lcom/android/server/am/ExtraActivityManagerService$1;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    .line 423
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq.activity.QQLSActivity"

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    .line 427
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    .line 628
    sput-boolean v6, Lcom/android/server/am/ExtraActivityManagerService;->sHasMetReleaseTime:Z

    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    .line 632
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.benchmark.bench64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.videobench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark.GL2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.tester"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.benchmark.full"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.music.videogame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmarkhd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.qihoo360.ludashi.cooling"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "cn.opda.android.activity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.shouji.cesupaofen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.colola.mobiletest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "ws.j7uxli.a6urcd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.gamebench.metricscollector"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.huahua.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.futuremark.dmandroid.application"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.eembc.coremark\u200b"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.rightware.BasemarkOSII"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.glbenchmark.glbenchmark27"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.greenecomputing.linpack"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.cfbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench3"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.quicinc.vellamo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.perfmon"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.evozi.deviceid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.finalwire.aida64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.cpuid.cpu_z"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "rs.in.luka.android.pi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.uzywpq.cqlzahm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.xidige.androidinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    const-string v1, "persist.sys.released"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ExtraActivityManagerService;->sHasMetReleaseTime:Z

    .line 698
    sput-object v8, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-void

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "mMainStack"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 110
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 111
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "scheduleDestroyActivities"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 113
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 115
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    return-void
.end method

.method static activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 877
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 878
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,activityIdle failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    if-nez p0, :cond_2

    .line 882
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_0

    .line 886
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 161
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 145
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "headIdx":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 151
    .local v6, "receiverSize":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "name":Ljava/lang/String;
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 154
    .local v5, "r":Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 152
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 126
    :cond_0
    return-void
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "systemReady"    # Z

    .prologue
    const/4 v0, 0x1

    .line 595
    if-nez p2, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 597
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZ)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z

    .prologue
    .line 433
    if-nez p6, :cond_0

    .line 434
    const/4 v3, 0x1

    .line 485
    :goto_0
    return v3

    .line 438
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v3, v0, v1, v4, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 440
    .local v16, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 442
    .local v6, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-eqz v6, :cond_2

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v3, v1}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 443
    const/4 v3, 0x0

    goto :goto_0

    .line 440
    .end local v6    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 442
    .restart local v6    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 446
    :cond_3
    const/16 v7, 0x8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 447
    const/4 v3, 0x0

    goto :goto_0

    .line 450
    :cond_4
    if-eqz v6, :cond_6

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 451
    const-string v9, ""

    .line 452
    .local v9, "callerName":Ljava/lang/String;
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    .line 454
    .local v15, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v15, :cond_5

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5

    .line 455
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 457
    :cond_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :try_start_2
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 461
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x2

    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v14, v3

    move/from16 v11, p5

    invoke-virtual/range {v7 .. v14}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 469
    const-string v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission denied by Whetstone, cannot start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 473
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 457
    .end local v15    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 482
    .end local v6    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v9    # "callerName":Ljava/lang/String;
    .end local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    .line 485
    :cond_6
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 477
    .restart local v6    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v9    # "callerName":Ljava/lang/String;
    .restart local v15    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    sget-boolean v3, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 478
    const-string v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZ)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z

    .prologue
    .line 490
    if-nez p3, :cond_0

    const/4 v1, 0x1

    .line 536
    :goto_0
    return v1

    .line 491
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_2

    .line 492
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 491
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 494
    :cond_2
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p6

    invoke-static {p0, v1, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 495
    const/4 v1, 0x0

    goto :goto_0

    .line 498
    :cond_3
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 499
    const/4 v1, 0x0

    goto :goto_0

    .line 502
    :cond_4
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 503
    const-string v3, ""

    .line 504
    .local v3, "callerName":Ljava/lang/String;
    monitor-enter p1

    .line 505
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 506
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_5

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    .line 507
    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 509
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 513
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v6, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v8, v5

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 521
    const-string v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied by Whetstone, cannot start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", UserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 509
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 529
    .restart local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_6
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 530
    const-string v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", UserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v3    # "callerName":Ljava/lang/String;
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Lcom/android/server/am/ContentProviderRecord;IZ)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "record"    # Lcom/android/server/am/ContentProviderRecord;
    .param p4, "userId"    # I
    .param p5, "systemReady"    # Z

    .prologue
    .line 541
    if-nez p5, :cond_0

    .line 542
    const/4 v1, 0x1

    .line 591
    :goto_0
    return v1

    .line 544
    :cond_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    .line 545
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 548
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x4

    move-object v1, p1

    move-object v2, p2

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 552
    const/4 v1, 0x0

    goto :goto_0

    .line 555
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 556
    const-string v6, ""

    .line 558
    .local v6, "callerName":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 559
    .local v12, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v12, :cond_4

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    .line 560
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 564
    :cond_4
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 565
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v11, v1

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 573
    const-string v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied by Whetstone, cannot start contentProvider from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_6

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", caller: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", UserId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 565
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 573
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 583
    :cond_7
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 584
    const-string v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start contentProvider from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", caller: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", UserId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v6    # "callerName":Ljava/lang/String;
    .end local v12    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 584
    .restart local v6    # "callerName":Ljava/lang/String;
    .restart local v12    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_9
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->shouldRestrictPkgBeforeRelease(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "ignoreTargetSecurity"    # Z

    .prologue
    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 227
    .local v18, "startTime":J
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 228
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 229
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 231
    .local v14, "origId":J
    :try_start_0
    const-string v2, "android.permission.START_ANY_ACTIVITY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    .line 232
    .local v16, "startAnyPerm":I
    if-eqz v16, :cond_1

    .line 233
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->getComponentRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 235
    const/4 v2, 0x0

    .line 264
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    .end local v16    # "startAnyPerm":I
    :goto_0
    return v2

    .line 238
    .restart local v16    # "startAnyPerm":I
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v5, v6}, Lcom/android/server/am/ExtraActivityManagerService;->getActionRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 240
    const/4 v2, 0x0

    .line 264
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 244
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, p3

    move v9, v6

    move v10, v5

    move-object/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 245
    const/4 v2, 0x0

    .line 264
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 248
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    .line 252
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v17

    .line 253
    .local v17, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 255
    const/4 v2, 0x0

    .line 264
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 257
    .end local v17    # "watchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 264
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    const-string v2, "checkStartActivityLocked"

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 268
    const/4 v2, 0x1

    goto :goto_0

    .line 260
    .end local v16    # "startAnyPerm":I
    :catch_1
    move-exception v13

    .line 261
    .local v13, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v3, "checkStartActivityLocked: An exception occured. "

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    const/4 v2, 0x0

    .line 264
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "ignoreTargetSecurity"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 183
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 184
    .local v6, "isFromActivity":Z
    :goto_0
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 183
    .end local v6    # "isFromActivity":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZI)Landroid/content/Intent;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I

    .prologue
    .line 192
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 193
    const/4 v12, 0x0

    .line 194
    .local v12, "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v2, 0x0

    .line 195
    .local v2, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x0

    .line 196
    .local v10, "calleeAlreadyStarted":Z
    const/4 v14, 0x0

    .line 197
    .local v14, "havePermission":Z
    monitor-enter p1

    .line 198
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 199
    if-eqz v12, :cond_0

    .line 200
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    .line 201
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v14

    .line 202
    if-eqz v14, :cond_0

    .line 204
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v10, 0x1

    .line 209
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v14, :cond_1

    .line 211
    const-string v1, "security"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/SecurityManager;

    .line 212
    .local v3, "securityManager":Lmiui/security/SecurityManager;
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v2

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p9

    invoke-virtual/range {v3 .. v11}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/Intent;ZIZI)Landroid/content/Intent;

    move-result-object v13

    .line 215
    .local v13, "checkIntent":Landroid/content/Intent;
    if-eqz v13, :cond_1

    .line 216
    move-object/from16 p4, v13

    .line 220
    .end local v2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "securityManager":Lmiui/security/SecurityManager;
    .end local v10    # "calleeAlreadyStarted":Z
    .end local v12    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "checkIntent":Landroid/content/Intent;
    .end local v14    # "havePermission":Z
    :cond_1
    return-object p4

    .line 209
    .restart local v2    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "calleeAlreadyStarted":Z
    .restart local v12    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "havePermission":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static checkTime(JLjava/lang/String;)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 983
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 984
    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 986
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    return-void
.end method

.method static checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z
    .locals 12
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ComponentInfo;
    .param p4, "wakeType"    # I
    .param p5, "userId"    # I

    .prologue
    .line 925
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 926
    :cond_0
    const/4 v9, 0x1

    .line 979
    :goto_0
    return v9

    .line 929
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 930
    .local v10, "startTime":J
    const/4 v9, 0x1

    .line 931
    .local v9, "ret":Z
    const-string v3, ""

    .line 932
    .local v3, "callerPkg":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 933
    monitor-enter p0

    .line 934
    :try_start_0
    const-string v0, "checkWakePath: synchronized (ams)1"

    invoke-static {v10, v11, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 935
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 936
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_3

    .line 937
    :cond_2
    const/4 v9, 0x1

    monitor-exit p0

    goto :goto_0

    .line 941
    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "ret":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 939
    .restart local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "ret":Z
    :cond_3
    :try_start_1
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 941
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :goto_1
    const/4 v7, -0x1

    .line 947
    .local v7, "calleeUid":I
    const-string v4, ""

    .line 948
    .local v4, "calleePkg":Ljava/lang/String;
    const-string v2, ""

    .line 949
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 951
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 952
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 955
    :cond_4
    if-eqz p3, :cond_6

    .line 956
    iget-object v0, p3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    .line 957
    iget-object v0, p3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 959
    :cond_5
    iget-object v4, p3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 960
    iget-object v2, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 963
    :cond_6
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 964
    const/4 v9, 0x1

    goto :goto_0

    .line 943
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v4    # "calleePkg":Ljava/lang/String;
    .end local v7    # "calleeUid":I
    :cond_7
    const-string v3, "android"

    goto :goto_1

    .line 967
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v4    # "calleePkg":Ljava/lang/String;
    .restart local v7    # "calleeUid":I
    :cond_8
    if-ltz v7, :cond_a

    .line 968
    monitor-enter p0

    .line 969
    :try_start_2
    const-string v0, "checkWakePath: checkWakePath: synchronized (ams)2"

    invoke-static {v10, v11, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 971
    iget-object v0, p3, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v7, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 972
    const/4 v9, 0x1

    monitor-exit p0

    goto :goto_0

    .line 974
    .end local v9    # "ret":Z
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .restart local v9    # "ret":Z
    :cond_9
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 977
    :cond_a
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v9, 0x1

    .line 978
    :goto_2
    const-string v0, "checkWakePath"

    invoke-static {v10, v11, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 977
    :cond_b
    const/4 v9, 0x0

    goto :goto_2
.end method

.method static destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 906
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 907
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,destroyActivity failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    if-nez p0, :cond_2

    .line 911
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_0

    .line 915
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->destroyActivity(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method private static ensureDeviceProvisioned(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 839
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 840
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 841
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.provision"

    const-string v4, "com.android.provision.activities.DefaultActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 844
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 845
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v4, "The device provisioned state is inconsistent,try to restore."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 847
    invoke-virtual {v2, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 849
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 851
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 852
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 857
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method

.method public static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "security"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 167
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 168
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    iget-object p1, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    monitor-exit p0

    move-object v1, p1

    .line 175
    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .end local p1    # "token":Landroid/os/IBinder;
    .local v1, "token":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 173
    .end local v1    # "token":Ljava/lang/Object;
    .restart local v0    # "securityManager":Lmiui/security/SecurityManager;
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_0
    monitor-exit p0

    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object v1, p1

    .line 175
    .restart local v1    # "token":Ljava/lang/Object;
    goto :goto_0

    .line 173
    .end local v1    # "token":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 394
    new-instance v0, Lmiui/drm/DrmBroadcast;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/drm/DrmBroadcast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/drm/DrmBroadcast;->broadcast()V

    .line 395
    return-void
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .locals 0
    .param p0, "userId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1006
    invoke-static {p0}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsUnmount(I)V

    .line 1007
    return-void
.end method

.method private static getActionRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 312
    if-nez p1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v4

    .line 316
    :cond_1
    sget-object v6, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 317
    .local v3, "permission":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 323
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 329
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 333
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v8, :cond_2

    move v4, v5

    .line 335
    goto :goto_0

    .line 325
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 338
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 339
    .local v1, "opCode":I
    if-eq v1, v8, :cond_0

    .line 343
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v6, v1, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 345
    goto :goto_0
.end method

.method private static getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 701
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    .line 702
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    .line 704
    :cond_0
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private static getComponentRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)Z
    .locals 10
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 273
    if-nez p5, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v7

    .line 295
    :goto_0
    return v0

    .line 279
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v8

    .line 280
    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v6

    .line 284
    .local v6, "opCode":I
    if-ne v6, v9, :cond_2

    move v0, v7

    .line 285
    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v6, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    if-nez p5, :cond_3

    move v0, v7

    .line 291
    goto :goto_0

    :cond_3
    move v0, v8

    .line 295
    goto :goto_0
.end method

.method public static getCurAdjByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 719
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 720
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 721
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 722
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 723
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    monitor-exit v3

    .line 726
    :goto_0
    return v2

    .line 725
    :cond_0
    monitor-exit v3

    .line 726
    const v2, 0x7fffffff

    goto :goto_0

    .line 725
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getCurSchedGroupByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 741
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 742
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 743
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 744
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 745
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    monitor-exit v3

    .line 748
    :goto_0
    return v2

    .line 747
    :cond_0
    monitor-exit v3

    .line 748
    const/4 v2, -0x1

    goto :goto_0

    .line 747
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getCurrentUserId()I
    .locals 4

    .prologue
    .line 1042
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1043
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: getCurrentUserId() from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1054
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v2

    return v2
.end method

.method public static getExecutingServicesSize(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 772
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 773
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 774
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 775
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 776
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    monitor-exit v3

    .line 779
    :goto_0
    return v2

    .line 778
    :cond_0
    monitor-exit v3

    .line 779
    const/4 v2, -0x1

    goto :goto_0

    .line 778
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getExtraInstallFlags(I)I
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 752
    const/4 v0, 0x0

    .line 754
    .local v0, "installFlags":I
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getCurSchedGroupByPid(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 757
    :cond_0
    return v0
.end method

.method public static getPackageNameByPid(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 708
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 709
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 710
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 711
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 712
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v3

    .line 715
    :goto_0
    return-object v2

    .line 714
    :cond_0
    monitor-exit v3

    .line 715
    const/4 v2, 0x0

    goto :goto_0

    .line 714
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "pkgName":Ljava/lang/String;
    instance-of v2, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    .line 376
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .end local p0    # "receiver":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 384
    :cond_0
    :goto_0
    return-object v0

    .line 377
    .restart local p0    # "receiver":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 378
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 379
    .local v1, "rinfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProcStateByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 730
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 731
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 732
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 733
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 734
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    monitor-exit v3

    .line 737
    :goto_0
    return v2

    .line 736
    :cond_0
    monitor-exit v3

    .line 737
    const/4 v2, -0x1

    goto :goto_0

    .line 736
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 991
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 992
    .local v1, "ams":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v1

    .line 993
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 994
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 995
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 997
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1001
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 999
    .restart local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v1

    .line 1002
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v2

    .line 1001
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTopRunningActivityInfo()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1058
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    .line 1059
    .local v3, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v3

    .line 1060
    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1061
    .local v0, "activityStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 1062
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1063
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 1064
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1065
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "packageName"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string v4, "token"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string v4, "userId"

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    monitor-exit v3

    .line 1072
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v1

    .line 1071
    :cond_0
    monitor-exit v3

    goto :goto_0

    .end local v0    # "activityStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 815
    invoke-static {}, Landroid/content/res/MiuiResources;->isPreloadedCacheEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-static {}, Lcom/android/server/AssetAtlasService;->disable()V

    .line 818
    :cond_0
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 819
    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userIdOrig"    # I
    .param p3, "oldUserId"    # I
    .param p4, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "mCurrentProfileIds"    # [I

    .prologue
    const/4 v5, 0x0

    .line 1017
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1018
    .local v1, "userIdInt":Ljava/lang/Integer;
    invoke-static {p2}, Lmiui/securityspace/SecuritySpaceEcryptManager;->needAirlockUser(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1019
    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUserAirlock(I[I)V

    .line 1020
    const-string v2, "ActivityManagerService"

    const-string v3, "setCurrentUser - needAirLockUser."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "second_user_id"

    const/16 v4, -0x2710

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1030
    .local v0, "privacyUserId":I
    const-string v2, "ActivityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "privacyUserId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userIdOrig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldUserId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    if-ne v0, p3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-nez p3, :cond_4

    if-ne p1, v0, :cond_4

    .line 1033
    :cond_2
    const-string v2, "ActivityManagerService"

    const-string v3, "switch without lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :goto_1
    return-void

    .line 1022
    .end local v0    # "privacyUserId":I
    :cond_3
    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 1023
    invoke-static {p2}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceNeedsEcryptfsMount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    const/4 v2, 0x0

    invoke-static {p2, v2, v5}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsMount(IILjava/lang/String;)I

    .line 1025
    invoke-static {p1}, Lcom/android/server/pm/ExtraPackageManagerService;->restoreconData(I)V

    goto :goto_0

    .line 1037
    .restart local v0    # "privacyUserId":I
    :cond_4
    invoke-virtual {p4, v5}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static hasForegroundActivities(I)Z
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 761
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 762
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 763
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 764
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 765
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    monitor-exit v3

    .line 768
    :goto_0
    return v2

    .line 767
    :cond_0
    monitor-exit v3

    .line 768
    const/4 v2, 0x0

    goto :goto_0

    .line 767
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 388
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 389
    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    .line 390
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    .line 391
    return-void
.end method

.method static isAllowedStartActivity(Lcom/android/server/AppOpsService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "opsService"    # Lcom/android/server/AppOpsService;
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    const/4 v2, 0x1

    .line 1077
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return v2

    .line 1080
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1081
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 1084
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1085
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1088
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p4, v3, :cond_0

    .line 1091
    const/16 v3, 0x2725

    invoke-virtual {p0, v3, p4, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1092
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG- Permission Denied Activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isUserSwitchable(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 1010
    const/16 v0, 0x63

    if-ne p0, v0, :cond_0

    .line 1011
    const/4 v0, 0x0

    .line 1013
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static onSystemReady(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 822
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    .line 823
    new-instance v1, Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {v1, p0}, Lcom/miui/server/SplashScreenServiceDelegate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    .line 824
    new-instance v1, Lcom/miui/server/MiuiPerformanceController;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiPerformanceController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerformanceController:Lcom/miui/server/MiuiPerformanceController;

    .line 825
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->init(Landroid/content/Context;)V

    .line 827
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->ensureDeviceProvisioned(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v2, "ensureDeviceProvisioned occurs Exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 860
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 861
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,request splash failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .end local p0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object p0

    .line 864
    .restart local p0    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 865
    :cond_1
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Intent or aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_3

    .line 869
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 871
    :cond_3
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "mSplashScreenServiceDelegate is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .prologue
    .line 354
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 355
    const/4 v6, 0x0

    .line 356
    .local v6, "transform":Z
    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    :cond_0
    const/16 v0, 0x3e7

    if-ne p4, v0, :cond_1

    .line 359
    const/4 p4, 0x0

    .line 361
    :cond_1
    const/4 v6, 0x1

    .line 366
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 367
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 370
    .end local v6    # "transform":Z
    :cond_3
    return-object p0

    .line 362
    .restart local v6    # "transform":Z
    :cond_4
    const-string v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    :cond_5
    const/4 v6, 0x1

    goto :goto_0
.end method

.method static resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .prologue
    .line 892
    if-eqz p1, :cond_0

    .line 893
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 894
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    const-string v0, "com.miui.systemAdSolution"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.systemAdSolution.splashscreen.SplashActivity"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 902
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object p0
.end method

.method public static scheduleDestroyActivities(IZLjava/lang/String;)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "oomAdj"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 797
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 798
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 799
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    .line 802
    :try_start_1
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 803
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    return-void

    .line 804
    :cond_1
    :try_start_3
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 805
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 808
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 811
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public static scheduleTrimMemory(II)V
    .locals 5
    .param p0, "pid"    # I
    .param p1, "level"    # I

    .prologue
    .line 783
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 784
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 785
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 786
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 788
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 794
    return-void

    .line 789
    :catch_0
    move-exception v1

    .line 790
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 793
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private static shouldRestrictPkgBeforeRelease(Ljava/lang/String;)Z
    .locals 8
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 675
    sget-boolean v6, Lcom/android/server/am/ExtraActivityManagerService;->sHasMetReleaseTime:Z

    if-eqz v6, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v4

    .line 679
    :cond_1
    const-wide/16 v2, 0x0

    .line 680
    .local v2, "time":J
    const-string v6, "release_time"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "releaseTime":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 687
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_2

    .line 688
    sget-object v6, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 689
    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 692
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sput-boolean v5, Lcom/android/server/am/ExtraActivityManagerService;->sHasMetReleaseTime:Z

    .line 693
    const-string v5, "persist.sys.released"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
