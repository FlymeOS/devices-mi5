.class Lcom/android/server/policy/MiuiGlobalActions$1$1;
.super Ljava/lang/Thread;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiGlobalActions$1;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MiuiGlobalActions$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions$1;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$1$1;->this$1:Lcom/android/server/policy/MiuiGlobalActions$1;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    :try_start_0
    # invokes: Lcom/android/server/policy/MiuiGlobalActions;->getPowerManager()Landroid/os/IPowerManager;
    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->access$100()Landroid/os/IPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method
