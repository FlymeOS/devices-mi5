.class public Lcom/android/settings/wifi/ag;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private aAi:Landroid/widget/ImageView;

.field private aAj:Z

.field private aCA:Landroid/widget/TextView;

.field private aCB:Landroid/widget/TextView;

.field private aCC:Landroid/widget/TextView;

.field private aCD:Landroid/widget/TextView;

.field private aCE:Landroid/widget/TextView;

.field protected aCF:Landroid/widget/Spinner;

.field protected aCG:Landroid/widget/TextView;

.field protected aCH:Landroid/widget/TextView;

.field protected aCI:Landroid/widget/TextView;

.field protected aCJ:Landroid/widget/TextView;

.field protected aCK:Landroid/net/IpConfiguration$IpAssignment;

.field protected aCL:Landroid/net/IpConfiguration$ProxySettings;

.field protected aCM:Landroid/net/ProxyInfo;

.field protected aCN:Landroid/net/StaticIpConfiguration;

.field aCO:Lcom/android/settings/wifi/M;

.field protected aCP:Landroid/widget/Spinner;

.field protected aCQ:Landroid/widget/Spinner;

.field protected aCR:Landroid/widget/Spinner;

.field protected aCS:Landroid/widget/Spinner;

.field protected aCT:Ljava/util/ArrayList;

.field protected aCU:Ljava/lang/String;

.field protected aCV:Ljava/lang/String;

.field protected aCW:Ljava/lang/String;

.field protected aCX:Ljava/lang/String;

.field protected aCY:Landroid/widget/TextView;

.field private aCZ:Z

.field protected final aCj:Lcom/android/settings/wifi/aj;

.field private final aCk:Landroid/widget/ArrayAdapter;

.field private final aCl:Landroid/widget/ArrayAdapter;

.field private final aCm:Landroid/os/Handler;

.field protected aCn:I

.field protected aCo:Landroid/widget/TextView;

.field private aCp:Ljava/lang/String;

.field protected aCq:Landroid/widget/Spinner;

.field private aCr:Landroid/widget/Spinner;

.field private aCs:Landroid/widget/Spinner;

.field private aCt:Landroid/widget/Spinner;

.field private aCu:Landroid/widget/Spinner;

.field private aCv:Landroid/widget/ArrayAdapter;

.field private aCw:Landroid/widget/Spinner;

.field private aCx:Landroid/widget/TextView;

.field private aCy:Landroid/widget/TextView;

.field protected aCz:Landroid/widget/Spinner;

.field private aDa:Z

.field private aDb:I

.field private aDc:[Ljava/lang/String;

.field private aDd:Z

.field private aDe:Z

.field protected aDf:Landroid/widget/TextView;

.field private final azP:Lcom/android/b/e/a;

.field private mContext:Landroid/content/Context;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/b/e/a;)V
    .locals 5

    .prologue
    const v4, 0x1090008

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCp:Ljava/lang/String;

    .line 187
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCK:Landroid/net/IpConfiguration$IpAssignment;

    .line 190
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    .line 194
    iput-object v1, p0, Lcom/android/settings/wifi/ag;->aCM:Landroid/net/ProxyInfo;

    .line 196
    iput-object v1, p0, Lcom/android/settings/wifi/ag;->aCN:Landroid/net/StaticIpConfiguration;

    .line 227
    iput-boolean v2, p0, Lcom/android/settings/wifi/ag;->aDa:Z

    .line 228
    iput v2, p0, Lcom/android/settings/wifi/ag;->aDb:I

    .line 241
    iput-object p1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    .line 242
    iput-object p2, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    .line 243
    iput-object v1, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/ag;->aDd:Z

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCm:Landroid/os/Handler;

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0325

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCp:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    .line 250
    const-string v0, "support_wapi"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 257
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 262
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 267
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCP:Landroid/widget/Spinner;

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCP:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCP:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCt:Landroid/widget/Spinner;

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCt:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCt:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCw:Landroid/widget/Spinner;

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCw:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCw:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCx:Landroid/widget/TextView;

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCy:Landroid/widget/TextView;

    .line 280
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCk:Landroid/widget/ArrayAdapter;

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCk:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 285
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCl:Landroid/widget/ArrayAdapter;

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCl:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/aj;Landroid/view/View;Lcom/android/b/e/a;ZZ)V
    .locals 8

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCp:Ljava/lang/String;

    .line 187
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCK:Landroid/net/IpConfiguration$IpAssignment;

    .line 190
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCM:Landroid/net/ProxyInfo;

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCN:Landroid/net/StaticIpConfiguration;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/ag;->aDa:Z

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/ag;->aDb:I

    .line 296
    iput-object p1, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    .line 298
    iput-object p2, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    .line 299
    iput-object p3, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    .line 300
    if-nez p3, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    .line 302
    iput-boolean p4, p0, Lcom/android/settings/wifi/ag;->aDd:Z

    .line 303
    iput-boolean p5, p0, Lcom/android/settings/wifi/ag;->aDe:Z

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCm:Landroid/os/Handler;

    .line 306
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    invoke-interface {v0}, Lcom/android/settings/wifi/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    iput-object v0, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 311
    const v0, 0x7f0a001d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aDc:[Ljava/lang/String;

    .line 312
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const v3, 0x1090008

    const v4, 0x7f0a0026

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCk:Landroid/widget/ArrayAdapter;

    .line 317
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCk:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 319
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const v3, 0x1090008

    const v4, 0x7f0a0027

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCl:Landroid/widget/ArrayAdapter;

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCl:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0325

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCp:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 331
    const v0, 0x7f130340

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aAi:Landroid/widget/ImageView;

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aAi:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCP:Landroid/widget/Spinner;

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCP:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCP:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-nez v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    const v1, 0x7f0c02ed

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/aj;->setTitle(I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aDf:Landroid/widget/TextView;

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aDf:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    .line 347
    const-string v0, "support_wapi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 352
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->ya()V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->yb()V

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    const v1, 0x7f0c0336

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/aj;->j(Ljava/lang/CharSequence;)V

    .line 476
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    const v1, 0x7f0c0338

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/aj;->l(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    invoke-interface {v0}, Lcom/android/settings/wifi/aj;->yh()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->xh()V

    .line 484
    :cond_2
    return-void

    .line 300
    :cond_3
    invoke-virtual {p3}, Lcom/android/b/e/a;->AA()I

    move-result v0

    goto/16 :goto_0

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AC()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/aj;->setTitle(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 371
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 372
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v3, v4, :cond_a

    .line 374
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 377
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    .line 378
    if-eqz v3, :cond_5

    iget-object v4, v3, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v4, :cond_5

    .line 379
    const v4, 0x7f0c0314

    iget-object v3, v3, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/wifi/ag;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 387
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v3, v4, :cond_b

    .line 388
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 396
    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 397
    const v3, 0x7f0c0316

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0317

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/ag;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 402
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->isActive()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/wifi/ag;->aDd:Z

    if-eqz v1, :cond_9

    .line 404
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->wY()V

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->ya()V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->yb()V

    .line 407
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130224

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130225

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 417
    :cond_9
    iget-boolean v1, p0, Lcom/android/settings/wifi/ag;->aDe:Z

    if-eqz v1, :cond_d

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    const v1, 0x7f0c0336

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/aj;->j(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 383
    :cond_a
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 390
    :cond_b
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v3, v4, :cond_c

    .line 391
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 394
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 420
    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 421
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xN()Ljava/lang/String;

    move-result-object v4

    .line 423
    if-nez v3, :cond_f

    if-eqz v4, :cond_f

    .line 424
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    const v1, 0x7f0c0332

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/aj;->j(Ljava/lang/CharSequence;)V

    .line 469
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    const v1, 0x7f0c0334

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/aj;->k(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 426
    :cond_f
    if-eqz v3, :cond_11

    .line 427
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->isEphemeral()Z

    move-result v5

    .line 428
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 429
    const/4 v1, 0x0

    .line 430
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 431
    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 433
    :cond_10
    iget-object v6, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    invoke-interface {v6}, Lcom/android/settings/wifi/aj;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v5, v1}, Lcom/android/b/e/a;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    const v3, 0x7f0c0311

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/ag;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 438
    :cond_11
    if-eqz v4, :cond_12

    .line 439
    const v1, 0x7f0c0310

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/wifi/ag;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 442
    :cond_12
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->Ax()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 443
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    .line 444
    const v3, 0x7f0c0312

    const v4, 0x7f0c02c1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/settings/wifi/ag;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 448
    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    .line 449
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    .line 450
    const/4 v1, 0x0

    .line 452
    const/16 v4, 0x960

    if-lt v3, v4, :cond_15

    const/16 v4, 0x9c4

    if-ge v3, v4, :cond_15

    .line 454
    const v1, 0x7f0c02bf

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 461
    :goto_5
    if-eqz v1, :cond_14

    .line 462
    const v3, 0x7f0c0313

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/ag;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 466
    :cond_14
    const v1, 0x7f0c030f

    iget-object v3, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/b/e/a;->bT(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/wifi/ag;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 455
    :cond_15
    const/16 v4, 0x1324

    if-lt v3, v4, :cond_16

    const/16 v4, 0x170c

    if-ge v3, v4, :cond_16

    .line 457
    const v1, 0x7f0c02c0

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 459
    :cond_16
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected frequency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    invoke-interface {v0}, Lcom/android/settings/wifi/aj;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 490
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 491
    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 496
    const v0, 0x1020010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1416
    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1418
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const/16 v2, 0x3f2

    invoke-virtual {v0, p2, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1419
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 1420
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCp:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1428
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1429
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1431
    sget v0, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1432
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1433
    return-void

    .line 1422
    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1423
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCp:Ljava/lang/String;

    aput-object v3, v0, v4

    .line 1424
    array-length v3, v2

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private b(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1436
    if-eqz p2, :cond_0

    .line 1438
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1439
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1440
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1441
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1446
    :cond_0
    return-void

    .line 1439
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private cb(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 803
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    return-object v0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 804
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private dH(I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 565
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_1

    const-string v0, "CMCC"

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 566
    :goto_0
    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 567
    const/4 p1, 0x4

    .line 569
    :cond_0
    return p1

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dI(I)V
    .locals 6

    .prologue
    const v5, 0x7f130213

    const v4, 0x7f13020b

    const/4 v3, 0x0

    .line 1148
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ag;->dH(I)I

    move-result v0

    .line 1150
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130209

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130211

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f13020d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xW()V

    .line 1159
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f13021b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1163
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xZ()V

    .line 1168
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1169
    packed-switch v0, :pswitch_data_0

    .line 1219
    :cond_1
    :goto_0
    return-void

    .line 1171
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xR()V

    .line 1172
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xS()V

    .line 1173
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xU()V

    .line 1174
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xT()V

    goto :goto_0

    .line 1177
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xR()V

    .line 1179
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xU()V

    .line 1182
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xV()V

    goto :goto_0

    .line 1186
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCv:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCk:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCk:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCv:Landroid/widget/ArrayAdapter;

    .line 1188
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCv:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1190
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xT()V

    goto :goto_0

    .line 1196
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCv:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCl:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_3

    .line 1197
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCl:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCv:Landroid/widget/ArrayAdapter;

    .line 1198
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCv:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1200
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1202
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xT()V

    goto :goto_0

    .line 1207
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xR()V

    .line 1208
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xU()V

    .line 1209
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xS()V

    .line 1210
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xT()V

    .line 1211
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xX()V

    .line 1212
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xQ()V

    .line 1214
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xV()V

    .line 1215
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1216
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->xY()V

    goto/16 :goto_0

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private dJ(I)V
    .locals 3

    .prologue
    .line 1586
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCT:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ag;->aCU:Ljava/lang/String;

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ag;->aCW:Ljava/lang/String;

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/as.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ag;->aCV:Ljava/lang/String;

    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/as.cer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCX:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :goto_0
    return-void

    .line 1591
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f(Lcom/android/b/e/a;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1228
    if-eqz p1, :cond_1

    const-string v0, "SG"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    const-string v2, "Singtel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    move v0, v1

    .line 1229
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1230
    const-string v2, "SIM"

    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1231
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1237
    :cond_1
    return-void

    .line 1229
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private xN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->getLevel()I

    move-result v0

    .line 504
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aDc:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aDc:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 508
    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aDc:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aDc:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private xQ()V
    .locals 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1224
    return-void
.end method

.method private xR()V
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1242
    return-void
.end method

.method private xS()V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCt:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1247
    return-void
.end method

.method private xT()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCw:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1252
    return-void
.end method

.method private xU()V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCy:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    return-void
.end method

.method private xV()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1260
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    return-void
.end method

.method private xW()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    return-void
.end method

.method private xX()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1272
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    return-void
.end method

.method private xY()V
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    return-void
.end method

.method private xZ()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    return-void
.end method

.method private y(II)V
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1408
    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    :cond_0
    return-void
.end method

.method private yc()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1456
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    .line 1458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/ag;->aCT:Ljava/util/ArrayList;

    .line 1461
    iput-boolean v0, p0, Lcom/android/settings/wifi/ag;->aDa:Z

    .line 1462
    iput v0, p0, Lcom/android/settings/wifi/ag;->aDb:I

    .line 1465
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/wapi_certificate"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1467
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1492
    :goto_0
    return-void

    .line 1471
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1472
    array-length v4, v3

    iput v4, p0, Lcom/android/settings/wifi/ag;->aDb:I

    .line 1473
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1474
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1475
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/as.cer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1476
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/user.cer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1478
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCT:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1483
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/ag;->aDa:Z

    .line 1484
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1487
    const v0, 0x1090009

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCQ:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1490
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Landroid/net/StaticIpConfiguration;)I
    .locals 7

    .prologue
    const v2, 0x7f0c034b

    const v0, 0x7f0c0349

    const/4 v1, 0x0

    .line 812
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCA:Landroid/widget/TextView;

    if-nez v3, :cond_1

    move v0, v1

    .line 880
    :cond_0
    :goto_0
    return v0

    .line 814
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCA:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 815
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 817
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ag;->cb(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 818
    if-eqz v3, :cond_0

    .line 822
    const/4 v0, -0x1

    .line 824
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCC:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 825
    if-ltz v0, :cond_2

    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    .line 826
    :cond_2
    const v0, 0x7f0c034c

    goto :goto_0

    .line 828
    :cond_3
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v3, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCB:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 838
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 841
    :try_start_1
    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 843
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    aput-byte v4, v0, v3

    .line 844
    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCB:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 856
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCD:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 863
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCD:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const v4, 0x7f0c034e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCE:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 873
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCE:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ag;->cb(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 875
    if-nez v0, :cond_8

    move v0, v2

    .line 876
    goto/16 :goto_0

    .line 829
    :catch_0
    move-exception v4

    .line 833
    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCC:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0354

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 849
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ag;->cb(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 850
    if-nez v0, :cond_5

    .line 851
    const v0, 0x7f0c034a

    goto/16 :goto_0

    .line 853
    :cond_5
    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 865
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ag;->cb(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 866
    if-nez v0, :cond_7

    move v0, v2

    .line 867
    goto/16 :goto_0

    .line 869
    :cond_7
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 878
    :cond_8
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move v0, v1

    .line 880
    goto/16 :goto_0

    .line 846
    :catch_1
    move-exception v0

    goto :goto_2

    .line 845
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCm:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/ah;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/ah;-><init>(Lcom/android/settings/wifi/ag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1510
    return-void
.end method

.method protected bI(Z)Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 574
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aDf:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/e/a;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 580
    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 589
    :goto_0
    if-eqz p1, :cond_2

    .line 590
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    packed-switch v0, :pswitch_data_0

    .line 738
    const/4 v0, 0x0

    .line 747
    :goto_1
    return-object v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/e/a;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 592
    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 743
    :cond_2
    :goto_2
    new-instance v0, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCK:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCN:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/ag;->aCM:Landroid/net/ProxyInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    move-object v0, v1

    .line 747
    goto :goto_1

    .line 596
    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 597
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 598
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 601
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_4

    :cond_3
    const-string v0, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v0, v5

    goto :goto_2

    .line 607
    :cond_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_2

    .line 613
    :pswitch_2
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 617
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 619
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 626
    :pswitch_3
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 627
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 628
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 629
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 630
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    const-string v2, "support_broadcom_wapi"

    invoke-static {v2, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 635
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 636
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 647
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCP:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 638
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 641
    :cond_8
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 642
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 644
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 653
    :pswitch_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 654
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 655
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 656
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 657
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 659
    :cond_a
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCV:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fy;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCV:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCU:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 668
    :pswitch_5
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 669
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 670
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 673
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ag;->dH(I)I

    move-result v0

    .line 675
    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    .line 676
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown EAP method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 680
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 681
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 682
    sparse-switch v0, :sswitch_data_0

    .line 713
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 716
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCt:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 717
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, ""

    .line 718
    :cond_c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCw:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 720
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, ""

    .line 721
    :cond_d
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 722
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCx:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 723
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCy:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 729
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 730
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 687
    :sswitch_0
    packed-switch v2, :pswitch_data_1

    .line 698
    const-string v0, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown phase2 method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 689
    :pswitch_6
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 692
    :pswitch_7
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 695
    :pswitch_8
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 704
    :sswitch_1
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 705
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/M;->getItemId(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settings/fy;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    goto/16 :goto_4

    .line 707
    :cond_e
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "sim_num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    iget-object v5, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/M;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 734
    :cond_f
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 682
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch

    .line 687
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1515
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const v2, 0x7f130226

    .line 1524
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f13021c

    if-ne v0, v1, :cond_2

    .line 1525
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1526
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1530
    if-ltz v1, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1540
    :cond_0
    :goto_1
    return-void

    .line 1526
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 1533
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f130225

    if-ne v0, v1, :cond_0

    .line 1534
    if-eqz p2, :cond_3

    .line 1535
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1537
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1627
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f130340

    if-ne v0, v1, :cond_0

    .line 1628
    iget-boolean v0, p0, Lcom/android/settings/wifi/ag;->aAj:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/ag;->aAj:Z

    .line 1629
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aAi:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/wifi/ag;->aAj:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0202fd

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1630
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/wifi/ag;->aAj:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_2
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1635
    :cond_0
    return-void

    .line 1628
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1629
    :cond_2
    const v0, 0x7f0202fa

    goto :goto_1

    .line 1630
    :cond_3
    const/16 v0, 0x80

    goto :goto_2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCr:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1545
    iput p3, p0, Lcom/android/settings/wifi/ag;->aCn:I

    .line 1549
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1550
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    .line 1553
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->wY()V

    .line 1582
    :cond_1
    :goto_0
    return-void

    .line 1554
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1555
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->wY()V

    goto :goto_0

    .line 1556
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    .line 1557
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->yb()V

    .line 1559
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->xi()Z

    goto :goto_0

    .line 1561
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCQ:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 1562
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCQ:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1563
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/ag;->aDb:I

    if-ge v0, v1, :cond_1

    const-string v1, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1565
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ag;->dJ(I)V

    goto :goto_0

    .line 1567
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCR:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_6

    .line 1568
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCR:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCV:Ljava/lang/String;

    goto :goto_0

    .line 1569
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCS:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_7

    .line 1570
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCS:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCU:Ljava/lang/String;

    goto :goto_0

    .line 1571
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_8

    .line 1572
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->ya()V

    .line 1574
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->xi()Z

    goto :goto_0

    .line 1577
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    if-eqz v0, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/M;->dE(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1601
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1520
    return-void
.end method

.method wX()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    iget v0, v0, Lcom/android/b/e/a;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/ag;->aDd:Z

    if-nez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 560
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ag;->bI(Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method protected wY()V
    .locals 10

    .prologue
    const v6, 0x7f130222

    const v5, 0x7f13021d

    const v4, 0x7f13021a

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 887
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130220

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130221

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    if-nez v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130207

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    .line 906
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 907
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    .line 908
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 909
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 912
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    const v3, 0x7f0c0324

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130223

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCP:Landroid/widget/Spinner;

    .line 922
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 923
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130219

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130223

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130226

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13022f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 975
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/android/settings/wifi/aC;->b(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 976
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130219

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 989
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    .line 990
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130208

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    .line 993
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130218

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 932
    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    .line 933
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130219

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130223

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130226

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13022f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    const-string v0, "mediatek"

    const-string v3, "vendor"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 942
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCR:Landroid/widget/Spinner;

    .line 943
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130221

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCS:Landroid/widget/Spinner;

    .line 944
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCR:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 945
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCS:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 946
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCR:Landroid/widget/Spinner;

    const-string v3, "WAPISERVERCERT_"

    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/ag;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCS:Landroid/widget/Spinner;

    const-string v3, "WAPIUSERCERT_"

    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/ag;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130220

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130221

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 955
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCY:Landroid/widget/TextView;

    .line 956
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCQ:Landroid/widget/Spinner;

    .line 957
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCQ:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 958
    invoke-direct {p0}, Lcom/android/settings/wifi/ag;->yc()V

    .line 959
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 963
    :cond_8
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 965
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130219

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13021c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130223

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13022f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 979
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13033b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 980
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f13033b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 983
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 984
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 980
    goto :goto_3

    .line 998
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130208

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130217

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    .line 1001
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1002
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v3, 0x7f130218

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_e

    const-string v0, "CMCC"

    iget-object v3, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    iget-object v3, v3, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    move v3, v0

    .line 1008
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    if-nez v0, :cond_18

    .line 1009
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v4, 0x7f13020a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    .line 1010
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1012
    const-string v0, "support_eap_sim"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1013
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    sget v6, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v3, :cond_f

    const v0, 0x7f0a0089

    :goto_5
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1019
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v4, 0x7f13020c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    .line 1021
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v4, 0x7f13020e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCt:Landroid/widget/Spinner;

    .line 1023
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v4, 0x7f130210

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCw:Landroid/widget/Spinner;

    .line 1024
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v4, 0x7f130212

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCx:Landroid/widget/TextView;

    .line 1025
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v4, 0x7f130214

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCy:Landroid/widget/TextView;

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v4, 0x7f13033f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    .line 1028
    new-instance v0, Lcom/android/settings/wifi/M;

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/settings/wifi/M;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    .line 1029
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1030
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_10

    .line 1033
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v1

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1034
    iget-object v6, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v6, :cond_1c

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    iget-object v7, v7, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1035
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v6, "sim_num"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1c

    .line 1037
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v0, v4

    :goto_7
    move v4, v0

    .line 1039
    goto :goto_6

    :cond_e
    move v3, v1

    .line 1006
    goto/16 :goto_4

    .line 1013
    :cond_f
    const v0, 0x7f0a0088

    goto/16 :goto_5

    :cond_10
    move v4, v1

    .line 1040
    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1041
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1042
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->getCount()I

    move-result v0

    const/4 v5, 0x1

    if-gt v0, v5, :cond_15

    .line 1043
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1054
    :cond_12
    :goto_8
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCt:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/ag;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCw:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/ag;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1059
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1060
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    .line 1061
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v6

    .line 1065
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    .line 1066
    if-lt v4, v0, :cond_1b

    .line 1067
    add-int/lit8 v0, v0, -0x1

    .line 1069
    :goto_9
    iget-object v7, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1072
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ag;->dI(I)V

    .line 1073
    packed-switch v4, :pswitch_data_0

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1094
    :goto_a
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCt:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/ag;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCw:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/ag;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCx:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCy:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :goto_b
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ag;->f(Lcom/android/b/e/a;)V

    .line 1109
    :goto_c
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    const-string v4, "MIOffice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-le v0, v4, :cond_19

    const/4 v0, 0x1

    .line 1111
    :goto_d
    if-eqz v0, :cond_13

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    if-eqz v4, :cond_13

    .line 1112
    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1114
    :cond_13
    if-nez v0, :cond_14

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    const-string v0, "CMCC-AUTO"

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    iget-object v4, v4, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz v3, :cond_0

    .line 1115
    :cond_14
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v4, 0x7f130209

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_1a

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f130213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_15
    move v0, v1

    .line 1045
    :goto_f
    iget-object v5, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    invoke-virtual {v5}, Lcom/android/settings/wifi/M;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_12

    .line 1046
    iget-object v5, p0, Lcom/android/settings/wifi/ag;->aCO:Lcom/android/settings/wifi/M;

    invoke-virtual {v5, v0}, Lcom/android/settings/wifi/M;->getItemId(I)J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v5, v6, v8

    if-nez v5, :cond_16

    .line 1047
    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aCq:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 1045
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1075
    :pswitch_0
    packed-switch v6, :pswitch_data_1

    .line 1086
    :pswitch_1
    const-string v0, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid phase 2 method "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1077
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_a

    .line 1080
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_a

    .line 1083
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCu:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_a

    .line 1099
    :cond_17
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ag;->dI(I)V

    goto/16 :goto_b

    .line 1104
    :cond_18
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCs:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ag;->dI(I)V

    goto/16 :goto_c

    :cond_19
    move v0, v1

    .line 1110
    goto/16 :goto_d

    :cond_1a
    move v1, v2

    .line 1115
    goto/16 :goto_e

    :cond_1b
    move v0, v4

    goto/16 :goto_9

    :cond_1c
    move v0, v4

    goto/16 :goto_7

    .line 1073
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1075
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method xO()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    invoke-interface {v0}, Lcom/android/settings/wifi/aj;->yi()Landroid/widget/Button;

    move-result-object v0

    .line 513
    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 515
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method xP()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    invoke-interface {v0}, Lcom/android/settings/wifi/aj;->yh()Landroid/widget/Button;

    move-result-object v0

    .line 520
    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method xh()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCj:Lcom/android/settings/wifi/aj;

    invoke-interface {v0}, Lcom/android/settings/wifi/aj;->yh()Landroid/widget/Button;

    move-result-object v3

    .line 528
    if-nez v3, :cond_0

    .line 553
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/ag;->aCn:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_8

    :cond_3
    move v0, v2

    .line 541
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aDf:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->aDf:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v4}, Lcom/android/b/e/a;->AH()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    .line 552
    :cond_6
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 546
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/ag;->xi()Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v2

    .line 547
    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method protected xi()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCK:Landroid/net/IpConfiguration$IpAssignment;

    .line 757
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCK:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 758
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCN:Landroid/net/StaticIpConfiguration;

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCN:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ag;->a(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 760
    if-eqz v0, :cond_1

    move v0, v1

    .line 798
    :goto_1
    return v0

    .line 753
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 766
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v3, p0, Lcom/android/settings/wifi/ag;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    .line 767
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/wifi/ag;->aCM:Landroid/net/ProxyInfo;

    .line 768
    if-ne v0, v2, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/ag;->aCG:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 769
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    .line 770
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 771
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 772
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCI:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 776
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 777
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 781
    :goto_2
    if-nez v0, :cond_3

    .line 782
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCM:Landroid/net/ProxyInfo;

    :cond_2
    :goto_3
    move v0, v2

    .line 798
    goto :goto_1

    .line 778
    :catch_0
    move-exception v0

    move v0, v1

    .line 779
    :goto_4
    const v3, 0x7f0c0166

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v1

    .line 784
    goto :goto_1

    .line 786
    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCJ:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 787
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    .line 788
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCJ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 789
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 790
    goto :goto_1

    .line 792
    :cond_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 793
    if-nez v0, :cond_6

    move v0, v1

    .line 794
    goto :goto_1

    .line 796
    :cond_6
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/settings/wifi/ag;->aCM:Landroid/net/ProxyInfo;

    goto :goto_3

    .line 778
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method protected ya()V
    .locals 5

    .prologue
    const v4, 0x7f130231

    const/4 v3, 0x0

    .line 1290
    const/4 v0, 0x0

    .line 1292
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f13022f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1295
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1298
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1299
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCA:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130232

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCA:Landroid/widget/TextView;

    .line 1302
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCA:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1303
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130233

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCB:Landroid/widget/TextView;

    .line 1304
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCB:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1305
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130234

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCC:Landroid/widget/TextView;

    .line 1307
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCC:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1308
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130235

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCD:Landroid/widget/TextView;

    .line 1309
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1310
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130236

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCE:Landroid/widget/TextView;

    .line 1311
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCE:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1313
    :cond_0
    if-eqz v1, :cond_4

    .line 1314
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 1315
    if-eqz v0, :cond_5

    .line 1316
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_1

    .line 1317
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCA:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCC:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    :cond_1
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_2

    .line 1324
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCB:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    :cond_2
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1328
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1329
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCD:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1332
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCE:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    :cond_4
    :goto_1
    return-void

    .line 1336
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1337
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1338
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 1339
    if-eqz v0, :cond_4

    .line 1340
    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1341
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1342
    iget-object v2, p0, Lcom/android/settings/wifi/ag;->aCA:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCB:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1349
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected yb()V
    .locals 8

    .prologue
    const v7, 0x7f130341

    const v6, 0x7f13022b

    const v5, 0x7f13022a

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1356
    const/4 v0, 0x0

    .line 1358
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130227

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1361
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1364
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1365
    invoke-direct {p0, v5, v4}, Lcom/android/settings/wifi/ag;->y(II)V

    .line 1366
    invoke-direct {p0, v6, v4}, Lcom/android/settings/wifi/ag;->y(II)V

    .line 1367
    invoke-direct {p0, v7, v3}, Lcom/android/settings/wifi/ag;->y(II)V

    .line 1368
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCG:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f13022c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCG:Landroid/widget/TextView;

    .line 1370
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCG:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1371
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f13022d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCH:Landroid/widget/TextView;

    .line 1372
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCH:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1373
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f13022e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCI:Landroid/widget/TextView;

    .line 1374
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1376
    :cond_0
    if-eqz v1, :cond_1

    .line 1377
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_1

    .line 1379
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCI:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    :cond_1
    :goto_1
    return-void

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1385
    invoke-direct {p0, v5, v3}, Lcom/android/settings/wifi/ag;->y(II)V

    .line 1386
    invoke-direct {p0, v6, v3}, Lcom/android/settings/wifi/ag;->y(II)V

    .line 1387
    invoke-direct {p0, v7, v4}, Lcom/android/settings/wifi/ag;->y(II)V

    .line 1389
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCJ:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 1390
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f130342

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ag;->aCJ:Landroid/widget/TextView;

    .line 1391
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->aCJ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1393
    :cond_3
    if-eqz v1, :cond_1

    .line 1394
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1395
    if-eqz v0, :cond_1

    .line 1396
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->aCJ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1400
    :cond_4
    invoke-direct {p0, v5, v3}, Lcom/android/settings/wifi/ag;->y(II)V

    .line 1401
    invoke-direct {p0, v6, v3}, Lcom/android/settings/wifi/ag;->y(II)V

    .line 1402
    invoke-direct {p0, v7, v3}, Lcom/android/settings/wifi/ag;->y(II)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public yd()Z
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/android/settings/wifi/ag;->aDe:Z

    return v0
.end method

.method public ye()V
    .locals 3

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v1, 0x7f13021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1608
    iget-object v1, p0, Lcom/android/settings/wifi/ag;->mView:Landroid/view/View;

    const v2, 0x7f13021c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1613
    return-void

    .line 1608
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method public yf()Z
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/android/settings/wifi/ag;->aCZ:Z

    return v0
.end method
