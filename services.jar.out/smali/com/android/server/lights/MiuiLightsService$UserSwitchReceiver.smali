.class Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p2, "x1"    # Lcom/android/server/lights/MiuiLightsService$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 50
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 52
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 54
    return-void
.end method
