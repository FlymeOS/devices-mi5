.class public Lcom/android/settings/wifi/WifiAPITest;
.super Lmiui/preference/PreferenceActivity;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aBZ:I

.field private aCa:Landroid/preference/Preference;

.field private aCb:Landroid/preference/Preference;

.field private aCc:Landroid/preference/Preference;

.field private je:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aBZ:I

    return v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->aBZ:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->je:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private xL()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f04019a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 75
    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->aCa:Landroid/preference/Preference;

    .line 76
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->aCa:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    const-string v1, "disable_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->aCb:Landroid/preference/Preference;

    .line 79
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->aCb:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    const-string v1, "enable_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aCc:Landroid/preference/Preference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aCc:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAPITest;->xL()V

    .line 66
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->je:Landroid/net/wifi/WifiManager;

    .line 67
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aCa:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 157
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aCb:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v1, "Input"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    const-string v1, "Enter Network ID"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 109
    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/Y;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/Y;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const-string v1, "Cancel"

    new-instance v2, Lcom/android/settings/wifi/Z;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/Z;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aCc:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    const-string v1, "Input"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    const-string v1, "Enter Network ID"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 134
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 136
    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/aa;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/aa;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    const-string v1, "Cancel"

    new-instance v2, Lcom/android/settings/wifi/ab;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/ab;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 93
    const/4 v0, 0x0

    return v0
.end method
