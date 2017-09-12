.class Lcom/miui/whetstone/LocationProxy$CallbackTransport;
.super Lcom/miui/whetstone/ILocationCallback$Stub;
.source "LocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/LocationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1


# instance fields
.field private final mCallback:Lcom/miui/whetstone/LocationCallback;

.field private final mCallbackHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/LocationCallback;Landroid/os/Looper;)V
    .locals 1
    .param p1, "callback"    # Lcom/miui/whetstone/LocationCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/whetstone/ILocationCallback$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/LocationCallback;

    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance v0, Lcom/miui/whetstone/LocationProxy$CallbackTransport$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/LocationProxy$CallbackTransport$1;-><init>(Lcom/miui/whetstone/LocationProxy$CallbackTransport;)V

    iput-object v0, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/miui/whetstone/LocationProxy$CallbackTransport$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/whetstone/LocationProxy$CallbackTransport$2;-><init>(Lcom/miui/whetstone/LocationProxy$CallbackTransport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 75
    const-string v1, "LocationProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknow msg type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 71
    :pswitch_0
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 72
    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/LocationCallback;

    invoke-interface {v1, v0}, Lcom/miui/whetstone/LocationCallback;->onLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/miui/whetstone/LocationProxy$CallbackTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/whetstone/LocationProxy$CallbackTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 63
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 64
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    return-void
.end method
