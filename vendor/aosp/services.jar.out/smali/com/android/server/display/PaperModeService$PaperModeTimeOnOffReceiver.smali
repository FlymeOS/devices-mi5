.class Lcom/android/server/display/PaperModeService$PaperModeTimeOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaperModeTimeOnOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$PaperModeTimeOnOffReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p2, "x1"    # Lcom/android/server/display/PaperModeService$1;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$PaperModeTimeOnOffReceiver;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "action":Ljava/lang/String;
    const-string v1, "paper_mode_time_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/server/display/PaperModeService$PaperModeTimeOnOffReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/display/PaperModeService;->setPaperModeTimeOnOff(Z)V
    invoke-static {v1, v2}, Lcom/android/server/display/PaperModeService;->access$1000(Lcom/android/server/display/PaperModeService;Z)V

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v1, "paper_mode_time_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/server/display/PaperModeService$PaperModeTimeOnOffReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/display/PaperModeService;->setPaperModeTimeOnOff(Z)V
    invoke-static {v1, v2}, Lcom/android/server/display/PaperModeService;->access$1000(Lcom/android/server/display/PaperModeService;Z)V

    goto :goto_0

    .line 218
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
