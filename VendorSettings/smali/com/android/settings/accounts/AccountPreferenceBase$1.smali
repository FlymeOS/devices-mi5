.class Lcom/android/settings/accounts/AccountPreferenceBase$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field final synthetic DL:Lcom/android/settings/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1;->DL:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1;->DL:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountPreferenceBase;->a(Lcom/android/settings/accounts/AccountPreferenceBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
