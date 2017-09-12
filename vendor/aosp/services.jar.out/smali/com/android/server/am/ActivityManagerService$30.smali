.class Lcom/android/server/am/ActivityManagerService$30;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$stoppingIntent:Landroid/content/Intent;

.field final synthetic val$stoppingReceiver:Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;)V
    .locals 0

    .prologue
    .line 20818
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$30;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$30;->val$stoppingIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$30;->val$stoppingReceiver:Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 20821
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$30;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$30;->val$stoppingIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$30;->val$stoppingReceiver:Lcom/android/server/am/ActivityManagerService$1StoppingReceiver;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "android.permission.INTERACT_ACROSS_USERS"

    aput-object v12, v10, v11

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    const/16 v17, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    invoke-static/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 20825
    return-void
.end method
