.class Lcom/android/server/display/PaperModeService$LocalService;
.super Lcom/android/server/display/PaperModeManager;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$LocalService;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Lcom/android/server/display/PaperModeManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p2, "x1"    # Lcom/android/server/display/PaperModeService$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$LocalService;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public updatePaperModePkg(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$LocalService;->this$0:Lcom/android/server/display/PaperModeService;

    # setter for: Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/display/PaperModeService;->access$902(Lcom/android/server/display/PaperModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$LocalService;->this$0:Lcom/android/server/display/PaperModeService;

    # getter for: Lcom/android/server/display/PaperModeService;->mPaperModeType:I
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$700(Lcom/android/server/display/PaperModeService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/PaperModeService$LocalService;->this$0:Lcom/android/server/display/PaperModeService;

    # getter for: Lcom/android/server/display/PaperModeService;->mCheckToPaperMode:Z
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$800(Lcom/android/server/display/PaperModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$LocalService;->this$0:Lcom/android/server/display/PaperModeService;

    # invokes: Lcom/android/server/display/PaperModeService;->updatePkgPaperMode()V
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$1100(Lcom/android/server/display/PaperModeService;)V

    .line 230
    :cond_0
    return-void
.end method
