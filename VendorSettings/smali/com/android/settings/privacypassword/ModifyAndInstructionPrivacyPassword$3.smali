.class Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$3;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$3;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$3;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->ba(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$3;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->c(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$3;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/vendorsettings/cZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dX()V

    .line 336
    return-void
.end method
