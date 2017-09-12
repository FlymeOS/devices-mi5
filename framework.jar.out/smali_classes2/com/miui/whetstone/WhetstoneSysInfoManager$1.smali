.class Lcom/miui/whetstone/WhetstoneSysInfoManager$1;
.super Ljava/lang/Object;
.source "WhetstoneSysInfoManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneSysInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/WhetstoneSysInfoManager;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/WhetstoneSysInfoManager;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;->this$0:Lcom/miui/whetstone/WhetstoneSysInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 69
    # getter for: Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/whetstone/WhetstoneSysInfoManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;->this$0:Lcom/miui/whetstone/WhetstoneSysInfoManager;

    invoke-static {p2}, Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneSysInfoService;

    move-result-object v1

    # setter for: Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;
    invoke-static {v0, v1}, Lcom/miui/whetstone/WhetstoneSysInfoManager;->access$102(Lcom/miui/whetstone/WhetstoneSysInfoManager;Lcom/miui/whetstone/IWhetstoneSysInfoService;)Lcom/miui/whetstone/IWhetstoneSysInfoService;

    .line 71
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 75
    # getter for: Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/whetstone/WhetstoneSysInfoManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;->this$0:Lcom/miui/whetstone/WhetstoneSysInfoManager;

    const/4 v1, 0x0

    # setter for: Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;
    invoke-static {v0, v1}, Lcom/miui/whetstone/WhetstoneSysInfoManager;->access$102(Lcom/miui/whetstone/WhetstoneSysInfoManager;Lcom/miui/whetstone/IWhetstoneSysInfoService;)Lcom/miui/whetstone/IWhetstoneSysInfoService;

    .line 77
    return-void
.end method
