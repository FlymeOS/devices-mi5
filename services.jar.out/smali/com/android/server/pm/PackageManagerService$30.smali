.class Lcom/android/server/pm/PackageManagerService$30;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPackageManagerQueue(ILcom/android/server/securespaces/PackageManagerQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$packageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/securespaces/PackageManagerQueue;I)V
    .locals 0

    .prologue
    .line 16958
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$30;->val$packageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$30;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 16960
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30;->val$packageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$30;->val$userId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/securespaces/PackageManagerQueue;->processQueue(Lcom/android/server/pm/Installer;Ljava/lang/Object;I)V

    .line 16961
    return-void
.end method
