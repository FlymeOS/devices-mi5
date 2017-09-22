.class Lcom/android/settings/hh;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic yT:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/hh;->yT:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/hh;->yT:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->e(Landroid/app/Fragment;)V

    .line 266
    const/4 v0, 0x1

    return v0
.end method
