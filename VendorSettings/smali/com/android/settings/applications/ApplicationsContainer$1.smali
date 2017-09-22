.class Lcom/android/settings/applications/ApplicationsContainer$1;
.super Landroid/os/Handler;
.source "ApplicationsContainer.java"


# instance fields
.field final synthetic HB:Lcom/android/settings/applications/ApplicationsContainer;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->HB:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->HB:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer;->a(Lcom/android/settings/applications/ApplicationsContainer;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->HB:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState;->c(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 140
    return-void
.end method
