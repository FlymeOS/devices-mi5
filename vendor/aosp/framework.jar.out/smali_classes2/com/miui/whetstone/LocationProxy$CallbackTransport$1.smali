.class Lcom/miui/whetstone/LocationProxy$CallbackTransport$1;
.super Landroid/os/Handler;
.source "LocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/LocationProxy$CallbackTransport;-><init>(Lcom/miui/whetstone/LocationCallback;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/LocationProxy$CallbackTransport;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/LocationProxy$CallbackTransport;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport$1;->this$0:Lcom/miui/whetstone/LocationProxy$CallbackTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport$1;->this$0:Lcom/miui/whetstone/LocationProxy$CallbackTransport;

    # invokes: Lcom/miui/whetstone/LocationProxy$CallbackTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/miui/whetstone/LocationProxy$CallbackTransport;->access$000(Lcom/miui/whetstone/LocationProxy$CallbackTransport;Landroid/os/Message;)V

    .line 48
    return-void
.end method
