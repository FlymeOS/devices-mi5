.class Lmiui/security/WakePathChecker$1;
.super Ljava/lang/Thread;
.source "WakePathChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/security/WakePathChecker;->onPackageAdded(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/security/WakePathChecker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/security/WakePathChecker;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lmiui/security/WakePathChecker$1;->this$0:Lmiui/security/WakePathChecker;

    iput-object p2, p0, Lmiui/security/WakePathChecker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lmiui/security/WakePathChecker$1;->this$0:Lmiui/security/WakePathChecker;

    iget-object v1, p0, Lmiui/security/WakePathChecker$1;->val$context:Landroid/content/Context;

    # invokes: Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lmiui/security/WakePathChecker;->access$000(Lmiui/security/WakePathChecker;Landroid/content/Context;)V

    .line 416
    return-void
.end method
