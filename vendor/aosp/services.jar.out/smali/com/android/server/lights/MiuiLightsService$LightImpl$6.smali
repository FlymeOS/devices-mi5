.class Lcom/android/server/lights/MiuiLightsService$LightImpl$6;
.super Landroid/database/ContentObserver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/MiuiLightsService$LightImpl;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;


# direct methods
.method constructor <init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$6;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$6;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const-string v1, "mms_breathing_light_color"

    const-string v2, "mms_breathing_light_freq"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setFlashing(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
