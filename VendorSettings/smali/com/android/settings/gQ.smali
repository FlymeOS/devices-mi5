.class Lcom/android/settings/gQ;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic xZ:Lcom/android/settings/RadioInfo;

.field final synthetic yc:Landroid/os/Handler;

.field final synthetic yd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/settings/gQ;->xZ:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/gQ;->yc:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/gQ;->yd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/settings/gQ;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->B(Lcom/android/settings/RadioInfo;)V

    .line 909
    iget-object v0, p0, Lcom/android/settings/gQ;->yc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/gQ;->yd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 910
    return-void
.end method
