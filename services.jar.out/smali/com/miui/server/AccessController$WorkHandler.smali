.class Lcom/miui/server/AccessController$WorkHandler;
.super Landroid/os/Handler;
.source "AccessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/AccessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AccessController;


# direct methods
.method public constructor <init>(Lcom/miui/server/AccessController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/server/AccessController$WorkHandler;->this$0:Lcom/miui/server/AccessController;

    .line 101
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/miui/server/AccessController$WorkHandler;->this$0:Lcom/miui/server/AccessController;

    invoke-virtual {v0}, Lcom/miui/server/AccessController;->updateWhiteList()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
