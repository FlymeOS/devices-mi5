.class public Lcom/android/settings/wifi/EditTetherFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "EditTetherFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings/wifi/q;


# instance fields
.field private TAG:Ljava/lang/String;

.field private aAf:Landroid/widget/TextView;

.field private aAg:I

.field private aAh:Landroid/widget/EditText;

.field private aAi:Landroid/widget/ImageView;

.field private aAj:Z

.field private aAk:I

.field private je:Landroid/net/wifi/WifiManager;

.field ub:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAg:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAk:I

    .line 51
    const-class v0, Lcom/android/settings/wifi/EditTetherFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/EditTetherFragment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAk:I

    return v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/EditTetherFragment;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAk:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/EditTetherFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAg:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 199
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/EditTetherFragment;->bz(Z)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/EditTetherFragment;->bz(Z)V

    goto :goto_0
.end method

.method private wY()V
    .locals 3

    .prologue
    const v2, 0x7f13033a

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/EditTetherFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 207
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAg:I

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private wZ()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAi:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAj:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0202fd

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 218
    iget-object v2, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAj:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 222
    if-ltz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 225
    :cond_0
    return-void

    .line 215
    :cond_1
    const v0, 0x7f0202fa

    goto :goto_0

    .line 218
    :cond_2
    const/16 v0, 0x80

    goto :goto_1
.end method


# virtual methods
.method public X()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings/wifi/EditTetherFragment;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 181
    const/4 v0, 0x0

    .line 182
    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/EditTetherFragment;->b(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f040199

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->validate()V

    .line 238
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public bz(Z)V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/EditTetherFragment;->h(Z)V

    .line 171
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f0c036c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/EditTetherFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f13033b

    if-ne v0, v1, :cond_0

    .line 230
    iget-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAj:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAj:Z

    .line 231
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->wZ()V

    .line 233
    :cond_0
    return-void

    .line 230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 252
    iput p3, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAg:I

    .line 253
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->wY()V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->validate()V

    .line 255
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    const-string v0, "show_password_checked"

    iget-boolean v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAj:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x1090008

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/wifi/EditTetherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/EditTetherFragment;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAg:I

    .line 67
    :cond_0
    const v0, 0x7f130205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 68
    const v1, 0x7f13014f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const v1, 0x7f130204

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    new-array v4, v3, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/settings/em;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Lcom/android/settings/em;-><init>(I)V

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 72
    const v1, 0x7f13021a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAk:I

    .line 76
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 77
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAg:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 78
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAg:I

    if-ne v1, v3, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    const v1, 0x7f13033b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAi:Landroid/widget/ImageView;

    .line 86
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAi:Landroid/widget/ImageView;

    const v3, 0x7f0202fa

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAi:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 90
    invoke-virtual {v0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 92
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->wY()V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->validate()V

    .line 96
    const v0, 0x7f13033c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/EditTetherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->je:Landroid/net/wifi/WifiManager;

    .line 99
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 100
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v3, :cond_6

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Device do not support 5GHz "

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_5

    const-string v1, " NO country code"

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " forbid 5GHz"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/EditTetherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0a0019

    invoke-static {v1, v3, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 106
    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->ub:Landroid/net/wifi/WifiConfiguration;

    iput v2, v3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 111
    :goto_3
    sget v2, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 113
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAk:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 114
    new-instance v1, Lcom/android/settings/wifi/f;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/f;-><init>(Lcom/android/settings/wifi/EditTetherFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 127
    return-void

    :cond_3
    move v1, v3

    .line 75
    goto/16 :goto_0

    .line 102
    :cond_4
    const-string v1, ""

    goto :goto_1

    :cond_5
    const-string v1, ""

    goto :goto_2

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/EditTetherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-static {v1, v2, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    goto :goto_3
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const-string v0, "show_password_checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAj:Z

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->wZ()V

    .line 136
    return-void
.end method

.method public wX()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAf:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 150
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAk:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 151
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAg:I

    packed-switch v1, :pswitch_data_0

    .line 165
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 153
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 158
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->aAh:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
