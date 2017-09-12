.class Lcom/android/server/lights/MiuiLightsService$LightImpl$8;
.super Landroid/os/Handler;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService$LightImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;


# direct methods
.method constructor <init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$8;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$8;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->turnOff()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
