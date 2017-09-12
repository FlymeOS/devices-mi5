.class Lcom/miui/server/MiuiPerformanceController$3;
.super Landroid/os/Handler;
.source "MiuiPerformanceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiPerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiPerformanceController;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiPerformanceController;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/server/MiuiPerformanceController$3;->this$0:Lcom/miui/server/MiuiPerformanceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/miui/server/MiuiPerformanceController$3;->this$0:Lcom/miui/server/MiuiPerformanceController;

    # invokes: Lcom/miui/server/MiuiPerformanceController;->bindService()V
    invoke-static {v0}, Lcom/miui/server/MiuiPerformanceController;->access$200(Lcom/miui/server/MiuiPerformanceController;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
