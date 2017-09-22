.class public Lcom/android/vendorsettings/ProxySelector;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/vendorsettings/cs;


# instance fields
.field private cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mView:Landroid/view/View;

.field wg:Landroid/widget/EditText;

.field wh:Landroid/widget/EditText;

.field wi:Landroid/widget/EditText;

.field wj:Landroid/widget/Button;

.field wk:Landroid/widget/Button;

.field wl:Landroid/widget/Button;

.field wm:Landroid/view/View$OnClickListener;

.field wn:Landroid/view/View$OnClickListener;

.field wo:Landroid/view/View$OnClickListener;

.field wp:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 243
    new-instance v0, Lcom/android/vendorsettings/go;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/go;-><init>(Lcom/android/vendorsettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wm:Landroid/view/View$OnClickListener;

    .line 251
    new-instance v0, Lcom/android/vendorsettings/gp;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gp;-><init>(Lcom/android/vendorsettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wn:Landroid/view/View$OnClickListener;

    .line 259
    new-instance v0, Lcom/android/vendorsettings/gq;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gq;-><init>(Lcom/android/vendorsettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wo:Landroid/view/View$OnClickListener;

    .line 266
    new-instance v0, Lcom/android/vendorsettings/gr;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gr;-><init>(Lcom/android/vendorsettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wp:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    const v0, 0x7f130243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wg:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wg:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wp:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    const v0, 0x7f130244

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wh:Landroid/widget/EditText;

    .line 124
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wh:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wm:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wh:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wp:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    const v0, 0x7f130245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wi:Landroid/widget/EditText;

    .line 128
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wi:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wp:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    const v0, 0x7f130246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wj:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wj:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wm:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f130247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wk:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f130248

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wl:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wl:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wo:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method private showDialog(I)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "ProxySelector"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/vendorsettings/cs;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 185
    invoke-static {p0, p1, p2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    const-string v0, "ProxySelector"

    const-string v1, "Unknown proxy settings error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 187
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :pswitch_1
    const v0, 0x7f0c0165

    goto :goto_0

    .line 191
    :pswitch_2
    const v0, 0x7f0c0162

    goto :goto_0

    .line 193
    :pswitch_3
    const v0, 0x7f0c0164

    goto :goto_0

    .line 195
    :pswitch_4
    const v0, 0x7f0c0166

    goto :goto_0

    .line 197
    :pswitch_5
    const v0, 0x7f0c0163

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method gA()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 141
    invoke-virtual {p0}, Lcom/android/vendorsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 142
    const-string v2, ""

    .line 144
    const-string v1, ""

    .line 146
    invoke-virtual {p0}, Lcom/android/vendorsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    .line 153
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v6

    .line 156
    :goto_0
    if-nez v0, :cond_0

    .line 157
    const-string v0, ""

    .line 160
    :cond_0
    iget-object v5, p0, Lcom/android/vendorsettings/ProxySelector;->wg:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    if-ne v2, v3, :cond_3

    const-string v0, ""

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/android/vendorsettings/ProxySelector;->wh:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->wi:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 169
    const-string v1, "button-label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/vendorsettings/ProxySelector;->wj:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_1
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    invoke-virtual {v4, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    :cond_2
    return-void

    .line 162
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    move v2, v3

    goto :goto_0
.end method

.method gB()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wg:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/android/vendorsettings/ProxySelector;->wh:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/android/vendorsettings/ProxySelector;->wi:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v1, v2, v3}, Lcom/android/vendorsettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 216
    if-eqz v4, :cond_0

    .line 217
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/ProxySelector;->showDialog(I)V

    .line 240
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 223
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    :cond_1
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v1, v0, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/vendorsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 239
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 82
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wg:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wh:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wi:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wk:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wl:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/vendorsettings/ProxySelector;->wg:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/android/vendorsettings/ProxySelector;->wh:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/android/vendorsettings/ProxySelector;->wi:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {p0}, Lcom/android/vendorsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v2, v3}, Lcom/android/vendorsettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0160

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0161

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 108
    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f040115

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->mView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/ProxySelector;->e(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/vendorsettings/ProxySelector;->gA()V

    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/ProxySelector;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x52

    return v0
.end method
