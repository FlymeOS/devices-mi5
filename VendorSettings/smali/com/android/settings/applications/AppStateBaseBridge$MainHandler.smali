.class Lcom/android/vendorsettings/applications/AppStateBaseBridge$MainHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# instance fields
.field final synthetic Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/applications/AppStateBaseBridge;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/vendorsettings/applications/AppStateBaseBridge$MainHandler;->Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/applications/AppStateBaseBridge;Lcom/android/vendorsettings/applications/AppStateBaseBridge$1;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/vendorsettings/applications/AppStateBaseBridge;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateBaseBridge$MainHandler;->Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->Gt:Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;

    invoke-interface {v0}, Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;->jR()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
