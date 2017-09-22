.class Lcom/android/settings/users/RestrictedProfileSettings$2;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aub:Lcom/android/settings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->aub:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->aub:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v0, v0, Lcom/android/settings/users/RestrictedProfileSettings;->sR:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->aub:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v1, v1, Lcom/android/settings/users/RestrictedProfileSettings;->atb:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 142
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->aub:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v0}, Lcom/android/settings/users/RestrictedProfileSettings;->hU()V

    .line 143
    return-void
.end method
