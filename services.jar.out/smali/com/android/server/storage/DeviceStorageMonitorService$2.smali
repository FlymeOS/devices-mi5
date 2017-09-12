.class Lcom/android/server/storage/DeviceStorageMonitorService$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v1

    .line 177
    .local v1, "level":I
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 178
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->doMemLowAction()V
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 182
    .end local v1    # "level":I
    :cond_0
    return-void
.end method
