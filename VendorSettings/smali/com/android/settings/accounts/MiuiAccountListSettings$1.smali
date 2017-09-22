.class Lcom/android/settings/accounts/MiuiAccountListSettings$1;
.super Ljava/lang/Object;
.source "MiuiAccountListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic EG:Lcom/android/settings/accounts/MiuiAccountListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountListSettings;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings$1;->EG:Lcom/android/settings/accounts/MiuiAccountListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings$1;->EG:Lcom/android/settings/accounts/MiuiAccountListSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->a(Lcom/android/settings/accounts/MiuiAccountListSettings;)Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings$1;->EG:Lcom/android/settings/accounts/MiuiAccountListSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->c(Landroid/preference/PreferenceActivity$Header;)V

    .line 95
    :cond_0
    return-void
.end method
