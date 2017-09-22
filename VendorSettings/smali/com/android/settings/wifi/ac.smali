.class public Lcom/android/settings/wifi/ac;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private aAf:Landroid/widget/TextView;

.field private aAg:I

.field private aAh:Landroid/widget/EditText;

.field private aAk:I

.field private final avg:Landroid/content/DialogInterface$OnClickListener;

.field je:Landroid/net/wifi/WifiManager;

.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;

.field ub:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const v0, 0x7f0d00a3

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput v1, p0, Lcom/android/settings/wifi/ac;->aAg:I

    .line 61
    iput v1, p0, Lcom/android/settings/wifi/ac;->aAk:I

    .line 74
    iput-object p2, p0, Lcom/android/settings/wifi/ac;->avg:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    iput-object p3, p0, Lcom/android/settings/wifi/ac;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 76
    if-eqz p3, :cond_0

    .line 77
    invoke-static {p3}, Lcom/android/settings/wifi/ac;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/ac;->aAg:I

    .line 79
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ac;->je:Landroid/net/wifi/WifiManager;

    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/ac;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/ac;->aAf:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAf:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAf:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/ac;->aAg:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAh:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAf:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 226
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ac;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ac;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private wY()V
    .locals 2

    .prologue
    const v1, 0x7f13033a

    .line 261
    iget v0, p0, Lcom/android/settings/wifi/ac;->aAg:I

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/settings/wifi/ac;->validate()V

    .line 247
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAh:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 237
    return-void

    .line 233
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x1090008

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/wifi/ac;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040199

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    const v1, 0x7f130205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 129
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ac;->setView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/ac;->setInverseBackgroundForced(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/wifi/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 134
    const v1, 0x7f0c036c

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ac;->setTitle(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    const v3, 0x7f13014f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    const v3, 0x7f130204

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/ac;->aAf:Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    const v3, 0x7f13021a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/ac;->aAh:Landroid/widget/EditText;

    .line 140
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 141
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v3, :cond_4

    .line 143
    :cond_0
    const-string v4, "WifiApDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/ac;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Device do not support 5GHz "

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_3

    const-string v1, " NO country code"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " forbid 5GHz"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0019

    invoke-static {v1, v3, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 147
    iget-object v3, p0, Lcom/android/settings/wifi/ac;->ub:Landroid/net/wifi/WifiConfiguration;

    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 153
    :goto_2
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 155
    const/4 v1, -0x1

    const v3, 0x7f0c0336

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ac;->avg:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/settings/wifi/ac;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    const/4 v1, -0x2

    const v3, 0x7f0c0338

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/ac;->avg:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/ac;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAf:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/ac;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->ub:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v1, :cond_5

    .line 162
    iput v6, p0, Lcom/android/settings/wifi/ac;->aAk:I

    .line 167
    :goto_3
    iget v1, p0, Lcom/android/settings/wifi/ac;->aAg:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 168
    iget v1, p0, Lcom/android/settings/wifi/ac;->aAg:I

    if-ne v1, v7, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAh:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/ac;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAf:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAh:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    const v2, 0x7f13021c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 205
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/wifi/ac;->wY()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/wifi/ac;->validate()V

    .line 209
    return-void

    .line 143
    :cond_2
    const-string v1, ""

    goto/16 :goto_0

    :cond_3
    const-string v1, ""

    goto/16 :goto_1

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0018

    invoke-static {v1, v3, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    goto :goto_2

    .line 164
    :cond_5
    iput v7, p0, Lcom/android/settings/wifi/ac;->aAk:I

    goto :goto_3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 251
    iput p3, p0, Lcom/android/settings/wifi/ac;->aAg:I

    .line 252
    invoke-direct {p0}, Lcom/android/settings/wifi/ac;->wY()V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/wifi/ac;->validate()V

    .line 254
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAh:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/ac;->mView:Landroid/view/View;

    const v2, 0x7f13021c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 218
    return-void

    .line 213
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public wX()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAf:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 102
    iget v1, p0, Lcom/android/settings/wifi/ac;->aAk:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 104
    iget v1, p0, Lcom/android/settings/wifi/ac;->aAg:I

    packed-switch v1, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 111
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAh:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings/wifi/ac;->aAh:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
