.class Lcom/android/server/display/PaperModeService$ScreenOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p2, "x1"    # Lcom/android/server/display/PaperModeService$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    iget-object v8, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # getter for: Lcom/android/server/display/PaperModeService;->mPaperModeType:I
    invoke-static {v8}, Lcom/android/server/display/PaperModeService;->access$700(Lcom/android/server/display/PaperModeService;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # getter for: Lcom/android/server/display/PaperModeService;->mCheckToPaperMode:Z
    invoke-static {v8}, Lcom/android/server/display/PaperModeService;->access$800(Lcom/android/server/display/PaperModeService;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 188
    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 189
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 190
    .local v7, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 191
    .local v6, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v1, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 192
    .local v5, "pkg":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # getter for: Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/display/PaperModeService;->access$900(Lcom/android/server/display/PaperModeService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x64

    if-eq v8, v9, :cond_1

    .line 194
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    goto :goto_0

    .line 191
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    return-void
.end method
