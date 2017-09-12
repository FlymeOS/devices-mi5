.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;
.super Landroid/app/IMiuiProcessObserver;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Landroid/app/IMiuiProcessObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 101
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 109
    return-void
.end method

.method public onProcessDied(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # getter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
    invoke-static {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$000(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # getter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
    invoke-static {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$000(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;II)V

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 105
    return-void
.end method
