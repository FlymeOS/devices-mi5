.class public Lcom/miui/whetstone/component/ComponentManagerNative;
.super Lcom/miui/whetstone/IComponentManager$Stub;
.source "ComponentManagerNative.java"


# static fields
.field public static final COMPONET_START_CHECK:I = 0x1

.field public static final COMPONET_START_CHECK_AMS_RESTART_SERVICE:Ljava/lang/String; = "COMPONET_START_CHECK_AMS_RESTART_SERVICE"

.field public static final COMPONET_START_CHECK_IS_CALLER_HAS_FOREGROUND_ACTIVITIES:Ljava/lang/String; = "COMPONET_START_CHECK_IS_CALLER_HAS_FOREGROUND_ACTIVITIES"

.field public static final COMPONET_START_CHECK_IS_CALLER_SYSTEM_UID:Ljava/lang/String; = "COMPONET_START_CHECK_IS_CALLER_SYSTEM_UID"

.field public static final COMPONET_START_CHECK_IS_FOREGROUND:Ljava/lang/String; = "COMPONET_START_CHECK_IS_FOREGROUND"

.field public static final COMPONET_START_CHECK_IS_SYSTEM_CALLER:Ljava/lang/String; = "COMPONET_START_CHECK_IS_SYSTEM_CALLER"

.field public static final COMPONET_START_CHECK_IS_SYSTEM_PACKAGE:Ljava/lang/String; = "COMPONET_START_CHECK_IS_SYSTEM_PACKAGE"

.field public static final INIT_PACKAGE_STATE:I = 0x0

.field public static final RETURN_FALSE:I = 0x2

.field public static final RETURN_TRUE:I = 0x1

.field public static final SET_LIMIT_PUSHACTIVITY_FEARURE:I = 0x3

.field public static final SET_LIMIT_PUSHSERVICE_FEARURE:I = 0x4

.field public static final SET_PACKAGECONTROL_FEATURE:I = 0x1

.field public static final SET_PACKAGE_STATE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/whetstone/IComponentManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public control(ILandroid/os/Bundle;)I
    .locals 2
    .param p1, "protocol"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot invoke this method from system_server"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComponentStartInfo(Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I

    .prologue
    .line 59
    invoke-static {p1, p3}, Lcom/miui/whetstone/component/ComponentHelper;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v6

    .line 60
    .local v6, "isSystemPackage":Z
    const/4 v3, 0x0

    .line 61
    .local v3, "isCallerSystemUid":Z
    const/4 v1, 0x0

    .line 62
    .local v1, "isCallerHasForegroundActivity":Z
    const/4 v2, 0x0

    .line 63
    .local v2, "isCallerSystemPackage":Z
    const/4 v4, 0x0

    .line 64
    .local v4, "isSelfForeground":Z
    const/4 v5, 0x0

    .line 66
    .local v5, "isServiceRestart":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "Restart: AMS"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    const/4 v5, 0x1

    .line 73
    :cond_0
    if-eqz v5, :cond_2

    .line 75
    const/4 v1, 0x0

    .line 76
    if-eqz v6, :cond_1

    .line 78
    const/4 v2, 0x1

    .line 79
    const/4 v3, 0x1

    .line 91
    :goto_0
    const-string v7, "COMPONET_START_CHECK_AMS_RESTART_SERVICE"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    const-string v7, "COMPONET_START_CHECK_IS_FOREGROUND"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    const-string v7, "COMPONET_START_CHECK_IS_CALLER_HAS_FOREGROUND_ACTIVITIES"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    const-string v7, "COMPONET_START_CHECK_IS_CALLER_SYSTEM_UID"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v7, "COMPONET_START_CHECK_IS_SYSTEM_CALLER"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string v7, "COMPONET_START_CHECK_IS_SYSTEM_PACKAGE"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    return-object v0

    .line 82
    :cond_1
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {p5}, Lcom/miui/whetstone/component/ComponentHelper;->isCallerHasForegroundActivities(I)Z

    move-result v1

    .line 87
    invoke-static {p4}, Lcom/miui/whetstone/component/ComponentHelper;->isCallerSystemUid(I)Z

    move-result v3

    .line 88
    if-nez v3, :cond_3

    invoke-static {p2, p3}, Lcom/miui/whetstone/component/ComponentHelper;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public handleComponentStart(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)I
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "startType"    # I
    .param p4, "userId"    # I
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "callingUid"    # I
    .param p8, "callingPid"    # I

    .prologue
    .line 42
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/miui/whetstone/component/ComponentManagerNative;->handleComponentStartV1(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public handleComponentStartV1(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "startType"    # I
    .param p4, "userId"    # I
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "callingUid"    # I
    .param p8, "callingPid"    # I
    .param p9, "addtional"    # Landroid/os/Bundle;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot invoke this method from system_server"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
