.class public Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;
.super Lcom/android/vendorsettings/BaseEditFragment;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private avH:Z

.field private avh:Lcom/android/internal/net/VpnProfile;

.field private avi:Z

.field private avj:Landroid/widget/Spinner;

.field private avk:Landroid/widget/TextView;

.field private avl:Landroid/widget/TextView;

.field private avm:Landroid/widget/TextView;

.field private avn:Landroid/widget/TextView;

.field private avo:Landroid/widget/TextView;

.field private avp:Landroid/widget/TextView;

.field private avq:Landroid/widget/CheckBox;

.field private avr:Landroid/widget/TextView;

.field private avs:Landroid/widget/TextView;

.field private avt:Landroid/widget/TextView;

.field private avu:Landroid/widget/Spinner;

.field private avv:Landroid/widget/Spinner;

.field private avw:Landroid/widget/Spinner;

.field private final dt:Landroid/security/KeyStore;

.field private mArgs:Landroid/os/Bundle;

.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseEditFragment;-><init>()V

    .line 47
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->dt:Landroid/security/KeyStore;

    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 359
    if-nez p3, :cond_2

    const-string v0, ""

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->dt:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 362
    if-eqz v4, :cond_0

    array-length v1, v4

    if-nez v1, :cond_3

    .line 363
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v5

    move-object v0, v1

    .line 371
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 373
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 375
    sget v3, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 376
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v2

    .line 378
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 379
    aget-object v2, v0, v1

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 380
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 384
    :cond_1
    return-void

    .line 359
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_3
    array-length v1, v4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 366
    aput-object v0, v1, v5

    .line 367
    array-length v0, v4

    invoke-static {v4, v5, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 368
    goto :goto_1

    .line 378
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private bk(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    if-nez p1, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avl:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 304
    goto :goto_0

    .line 306
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avk:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->g(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->g(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 309
    goto :goto_0

    .line 311
    :cond_4
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avl:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v0, v1

    .line 312
    goto :goto_0

    .line 314
    :cond_6
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avj:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 327
    goto :goto_0

    .line 321
    :pswitch_1
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avu:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private dg(I)V
    .locals 7

    .prologue
    const v6, 0x7f130311

    const v5, 0x7f130314

    const v4, 0x7f130310

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avq:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 260
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    const v1, 0x7f13031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    const v1, 0x7f13031d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    const v1, 0x7f130315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    const v1, 0x7f130318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avq:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const v1, 0x7f130315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const v1, 0x7f130318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    const v1, 0x7f130315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    const v1, 0x7f130318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 289
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :pswitch_4
    const v1, 0x7f13031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :pswitch_5
    const v1, 0x7f13031d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private g(Ljava/lang/String;Z)Z
    .locals 10

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 332
    :try_start_0
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 333
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 338
    :cond_1
    if-eqz p2, :cond_4

    .line 339
    const-string v4, "/"

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 340
    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 341
    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 343
    :goto_1
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 344
    const/4 v8, 0x3

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x2

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    .line 346
    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x4

    if-ne v4, v9, :cond_2

    if-ltz v2, :cond_2

    if-gt v2, v3, :cond_2

    if-ge v2, v3, :cond_0

    shl-int v2, v8, v2

    if-eqz v2, :cond_0

    .line 354
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 351
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v4, v2

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f040193

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avi:Z

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->bk(Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->h(Z)V

    .line 227
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public g(Z)V
    .locals 4

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->vH()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 447
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 448
    const-string v2, "profile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 449
    const-string v2, "profile_key"

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v0, "profile_delete"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->b(Landroid/os/Bundle;)V

    .line 452
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "profile_add"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 441
    if-eqz v0, :cond_0

    const v0, 0x7f0c092c

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0c0925

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    check-cast p1, Landroid/widget/CheckBox;

    .line 240
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130321

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avH:Z

    .line 242
    return-void

    .line 240
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseEditFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string v0, "show_options_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avH:Z

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v2, "profile_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 84
    :cond_2
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    .line 88
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avi:Z

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {v1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avj:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 247
    invoke-direct {p0, p3}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->dg(I)V

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avi:Z

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->bk(Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->h(Z)V

    .line 250
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseEditFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "show_options_flag"

    iget-boolean v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avH:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/vendorsettings/BaseEditFragment;->onStart()V

    .line 221
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avi:Z

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->bk(Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->h(Z)V

    .line 222
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/BaseEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v3, "profile_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->finish()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const v0, 0x7f130054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f13014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avj:Landroid/widget/Spinner;

    .line 116
    const v0, 0x7f13030e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avk:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f130326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avl:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f13021a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avm:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f130322

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avn:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f130323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avo:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f130324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avp:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f13030f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avq:Landroid/widget/CheckBox;

    .line 123
    const v0, 0x7f130313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avr:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f130317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avs:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f13031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avt:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f13031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avu:Landroid/widget/Spinner;

    .line 127
    const v0, 0x7f13031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avv:Landroid/widget/Spinner;

    .line 128
    const v0, 0x7f13031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avw:Landroid/widget/Spinner;

    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avj:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 133
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avk:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avl:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avq:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avr:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avs:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avu:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    iget-object v4, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avv:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    const v4, 0x7f0c091f

    iget-object v5, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avw:Landroid/widget/Spinner;

    const-string v3, "USRCERT_"

    const v4, 0x7f0c0920

    iget-object v5, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avj:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avj:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avj:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avl:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avu:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avu:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avu:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avv:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avv:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avw:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avw:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 166
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->bk(Z)Z

    move-result v0

    .line 167
    iget-boolean v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avi:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_5

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avi:Z

    .line 169
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avi:Z

    if-eqz v0, :cond_4

    .line 172
    const v0, 0x7f13030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const v0, 0x7f130321

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avH:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->dg(I)V

    .line 179
    const v0, 0x7f130320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 184
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 188
    :cond_4
    const v0, 0x7f130239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 189
    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v4, "profile_add"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 190
    if-nez v2, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    new-instance v1, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment$1;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 167
    goto :goto_1

    .line 175
    :cond_6
    const/16 v0, 0x8

    goto :goto_2
.end method

.method vH()Lcom/android/internal/net/VpnProfile;
    .locals 2

    .prologue
    .line 392
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avj:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 395
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avk:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 403
    iget v0, v1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 435
    return-object v1

    .line 405
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avq:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    .line 409
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 412
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 417
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 420
    :pswitch_4
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avu:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avu:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 425
    :cond_1
    :pswitch_5
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avv:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avv:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avw:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;->avw:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
