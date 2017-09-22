.class Lcom/android/vendorsettings/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# instance fields
.field final synthetic atp:Lcom/android/vendorsettings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$1;->atp:Lcom/android/vendorsettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$1;->atp:Lcom/android/vendorsettings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/users/AppRestrictionsFragment;->a(Lcom/android/vendorsettings/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$1;->atp:Lcom/android/vendorsettings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/users/AppRestrictionsFragment;->b(Lcom/android/vendorsettings/users/AppRestrictionsFragment;)V

    .line 128
    :cond_0
    return-void
.end method
