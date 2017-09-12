.class Lcom/android/server/display/PaperModeService$UserTimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserTimeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$UserTimeChangedReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p2, "x1"    # Lcom/android/server/display/PaperModeService$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$UserTimeChangedReceiver;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$UserTimeChangedReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # invokes: Lcom/android/server/display/PaperModeService;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$500(Lcom/android/server/display/PaperModeService;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$UserTimeChangedReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # invokes: Lcom/android/server/display/PaperModeService;->updatePaperMode()V
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$400(Lcom/android/server/display/PaperModeService;)V

    .line 180
    return-void
.end method
