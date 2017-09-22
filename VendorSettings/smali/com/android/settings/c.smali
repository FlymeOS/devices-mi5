.class Lcom/android/settings/c;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic g:Lcom/android/settings/AccessControlFragment;

.field final synthetic h:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/c;->g:Lcom/android/settings/AccessControlFragment;

    iput-object p2, p0, Lcom/android/settings/c;->h:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v0, p0, Lcom/android/settings/c;->g:Lcom/android/settings/AccessControlFragment;

    invoke-static {v0}, Lcom/android/settings/AccessControlFragment;->b(Lcom/android/settings/AccessControlFragment;)Landroid/security/ChooseLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/c;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    return-void
.end method
