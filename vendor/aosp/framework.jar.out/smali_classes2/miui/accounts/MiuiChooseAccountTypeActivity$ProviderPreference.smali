.class Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
.super Landroid/preference/Preference;
.source "MiuiChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/MiuiChooseAccountTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderPreference"
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "providerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 207
    iput-object p2, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p3}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setPersistent(Z)V

    .line 210
    invoke-virtual {p0, p4}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method
