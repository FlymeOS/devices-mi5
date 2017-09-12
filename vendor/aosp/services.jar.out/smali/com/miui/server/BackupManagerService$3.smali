.class Lcom/miui/server/BackupManagerService$3;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/BackupManagerService;->waitForTheLastWorkingTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$3;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$3;->this$0:Lcom/miui/server/BackupManagerService;

    # invokes: Lcom/miui/server/BackupManagerService;->releaseBackupWriteStream()V
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$600(Lcom/miui/server/BackupManagerService;)V

    .line 463
    return-void
.end method
