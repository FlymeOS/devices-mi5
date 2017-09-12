.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 224
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # getter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$100(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 229
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    # setter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$102(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 231
    :cond_0
    const-class v2, Landroid/os/PowerManager;

    const-string v3, "isDeviceIdleMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # getter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$100(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    .local v0, "deviceIdle":Z
    const-string/jumbo v2, "whetstone.activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceIdleMode changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # getter for: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;
    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$200(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "updateAllPartialWakeLockDisableState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "deviceIdle":Z
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
