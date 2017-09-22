.class Lcom/android/settings/accounts/MiuiAccountListSettings$3;
.super Ljava/lang/Object;
.source "MiuiAccountListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic EG:Lcom/android/settings/accounts/MiuiAccountListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountListSettings;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings$3;->EG:Lcom/android/settings/accounts/MiuiAccountListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/preference/PreferenceActivity$Header;Landroid/preference/PreferenceActivity$Header;)I
    .locals 2

    .prologue
    .line 198
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 195
    check-cast p1, Landroid/preference/PreferenceActivity$Header;

    check-cast p2, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accounts/MiuiAccountListSettings$3;->a(Landroid/preference/PreferenceActivity$Header;Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method
