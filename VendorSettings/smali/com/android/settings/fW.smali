.class Lcom/android/vendorsettings/fW;
.super Ljava/lang/Object;
.source "OldmanModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic vx:Lcom/android/vendorsettings/OldmanModeSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/OldmanModeSettings;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/vendorsettings/fW;->vx:Lcom/android/vendorsettings/OldmanModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 44
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/vendorsettings/fW;->vx:Lcom/android/vendorsettings/OldmanModeSettings;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0f89

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_0

    const v0, 0x7f0c0f8a

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    new-instance v3, Lcom/android/vendorsettings/fX;

    invoke-direct {v3, p0, v1}, Lcom/android/vendorsettings/fX;-><init>(Lcom/android/vendorsettings/fW;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 61
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_0
    const v0, 0x7f0c0f8b

    goto :goto_0
.end method
