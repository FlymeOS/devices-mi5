.class Lmiui/util/ProximitySensorWrapper$2;
.super Landroid/os/Handler;
.source "ProximitySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ProximitySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/ProximitySensorWrapper;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    const/4 v1, 0x1

    # invokes: Lmiui/util/ProximitySensorWrapper;->notifyListeners(Z)V
    invoke-static {v0, v1}, Lmiui/util/ProximitySensorWrapper;->access$300(Lmiui/util/ProximitySensorWrapper;Z)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    const/4 v1, 0x0

    # invokes: Lmiui/util/ProximitySensorWrapper;->notifyListeners(Z)V
    invoke-static {v0, v1}, Lmiui/util/ProximitySensorWrapper;->access$300(Lmiui/util/ProximitySensorWrapper;Z)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
