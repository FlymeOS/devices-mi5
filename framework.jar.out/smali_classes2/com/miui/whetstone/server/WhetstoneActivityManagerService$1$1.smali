.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;
.super Ljava/lang/Object;
.source "WhetstoneActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->onProcessDied(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

.field final synthetic val$pid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;II)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;->this$1:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

    iput p2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;->val$uid:I

    iput p3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;->this$1:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

    iget-object v0, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;->val$uid:I

    iget v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1$1;->val$pid:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->killSensorsByUid(II)V

    .line 118
    return-void
.end method
