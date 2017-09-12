.class Lcom/miui/server/SecurityManagerService$1;
.super Ljava/lang/Thread;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;

.field final synthetic val$onlyCore:Z


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Z)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iput-boolean p2, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 469
    const/16 v11, 0xa

    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 470
    sget-boolean v11, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v11, :cond_4

    iget-boolean v11, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    if-nez v11, :cond_4

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 472
    .local v0, "begin":J
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 473
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 475
    .local v5, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v11, "android"

    const/16 v12, 0x40

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 480
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 482
    .local v7, "platformSignature":[Landroid/content/pm/Signature;
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z
    invoke-static {v11}, Lcom/miui/server/SecurityManagerService;->access$1200(Lcom/miui/server/SecurityManagerService;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 484
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->enforcePlatformSignature([Landroid/content/pm/Signature;)V
    invoke-static {v11, v7}, Lcom/miui/server/SecurityManagerService;->access$1300(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V

    .line 487
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v2, "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "com.lbe.security.miui"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v11, "com.android.updater"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v11, "com.miui.securitycenter"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    const-string v11, "com.xiaomi.finddevice"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const-string v11, "com.miui.home"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    const-string v11, "com.miui.guardprovider"

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 496
    .local v6, "pkg":Ljava/lang/String;
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    invoke-static {v11, v8, v6}, Lcom/miui/server/SecurityManagerService;->access$1400(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .end local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "platformSignature":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .line 477
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 478
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "System error: cannot find android package."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 500
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "platformSignature":[Landroid/content/pm/Signature;
    :cond_1
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v12, "com.android.updater"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v11, v7, v12, v9}, Lcom/miui/server/SecurityManagerService;->access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 503
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v12, "com.miui.securitycenter"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v11, v7, v12, v10}, Lcom/miui/server/SecurityManagerService;->access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 506
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v12, "com.xiaomi.finddevice"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v11, v7, v12, v9}, Lcom/miui/server/SecurityManagerService;->access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 508
    sget-boolean v11, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v11, :cond_2

    sget-boolean v11, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v11, :cond_2

    sget-boolean v11, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v11, :cond_2

    .line 510
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v12, "com.xiaomi.market"

    # invokes: Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    invoke-static {v11, v8, v12}, Lcom/miui/server/SecurityManagerService;->access$1400(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 512
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v12, "com.xiaomi.market"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v11, v7, v12, v10}, Lcom/miui/server/SecurityManagerService;->access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 515
    :cond_2
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z
    invoke-static {v11}, Lcom/miui/server/SecurityManagerService;->access$1200(Lcom/miui/server/SecurityManagerService;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 516
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->checkSysAppCrack()Z
    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->access$1700(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_5

    :goto_1
    # setter for: Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I
    invoke-static {v11, v9}, Lcom/miui/server/SecurityManagerService;->access$1602(Lcom/miui/server/SecurityManagerService;I)I

    .line 520
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 525
    .end local v0    # "begin":J
    .end local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "platformSignature":[Landroid/content/pm/Signature;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    return-void

    .restart local v0    # "begin":J
    .restart local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "platformSignature":[Landroid/content/pm/Signature;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    move v9, v10

    .line 516
    goto :goto_1
.end method
