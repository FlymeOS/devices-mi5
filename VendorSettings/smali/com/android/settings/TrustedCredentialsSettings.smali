.class public Lcom/android/vendorsettings/TrustedCredentialsSettings;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private Bn:Lcom/android/vendorsettings/in;

.field private Bo:Ljava/util/HashMap;

.field private final Bp:Landroid/util/SparseArray;

.field private gR:Landroid/widget/TabHost;

.field private sR:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 172
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bo:Ljava/util/HashMap;

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bp:Landroid/util/SparseArray;

    .line 746
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->sR:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/io;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Lcom/android/vendorsettings/io;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/android/vendorsettings/io;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 601
    if-nez p3, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 603
    const v1, 0x7f040181

    invoke-virtual {v0, v1, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 604
    new-instance v1, Lcom/android/vendorsettings/is;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/is;-><init>(Lcom/android/vendorsettings/id;)V

    .line 605
    const v0, 0x7f1302e4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/is;->a(Lcom/android/vendorsettings/is;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 607
    const v0, 0x7f1302e5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/is;->b(Lcom/android/vendorsettings/is;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 609
    const v0, 0x7f1302e6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/is;->a(Lcom/android/vendorsettings/is;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 611
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 615
    :goto_0
    invoke-static {v0}, Lcom/android/vendorsettings/is;->a(Lcom/android/vendorsettings/is;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/android/vendorsettings/io;->g(Lcom/android/vendorsettings/io;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-static {v0}, Lcom/android/vendorsettings/is;->b(Lcom/android/vendorsettings/is;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/android/vendorsettings/io;->h(Lcom/android/vendorsettings/io;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-static {p2}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->h(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    invoke-static {v0}, Lcom/android/vendorsettings/is;->c(Lcom/android/vendorsettings/is;)Landroid/widget/Switch;

    move-result-object v4

    invoke-static {p1}, Lcom/android/vendorsettings/io;->d(Lcom/android/vendorsettings/io;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 619
    invoke-static {v0}, Lcom/android/vendorsettings/is;->c(Lcom/android/vendorsettings/is;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v4, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->sR:Landroid/os/UserManager;

    const-string v5, "no_config_credentials"

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p1, Lcom/android/vendorsettings/io;->mProfileId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 622
    invoke-static {v0}, Lcom/android/vendorsettings/is;->c(Lcom/android/vendorsettings/is;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 624
    :cond_0
    return-object p3

    .line 613
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/is;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 618
    goto :goto_1

    :cond_3
    move v2, v3

    .line 619
    goto :goto_2
.end method

.method static synthetic a(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/in;)Lcom/android/vendorsettings/in;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bn:Lcom/android/vendorsettings/in;

    return-object p1
.end method

.method private a(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->b(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->d(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-static {p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->c(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 224
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->e(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 226
    new-instance v1, Lcom/android/vendorsettings/ir;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/vendorsettings/ir;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/id;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 229
    new-instance v2, Lcom/android/vendorsettings/id;

    invoke-direct {v2, p0, v1}, Lcom/android/vendorsettings/id;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/ir;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 248
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->f(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 239
    new-instance v1, Lcom/android/vendorsettings/ip;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/vendorsettings/ip;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/id;)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    new-instance v2, Lcom/android/vendorsettings/ie;

    invoke-direct {v2, p0, v1}, Lcom/android/vendorsettings/ie;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/ip;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/io;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Lcom/android/vendorsettings/io;)V

    return-void
.end method

.method private a(Lcom/android/vendorsettings/io;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 634
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 635
    const v0, 0x10404aa

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 637
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    invoke-direct {p0, p1, v4, v0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Lcom/android/vendorsettings/io;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 641
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v1, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 644
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 645
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 646
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 647
    new-instance v1, Lcom/android/vendorsettings/if;

    invoke-direct {v1, p0, v4}, Lcom/android/vendorsettings/if;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 659
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 660
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 661
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v1, v2

    .line 662
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 663
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 664
    if-eqz v1, :cond_0

    .line 665
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_0
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 670
    const v0, 0x104000a

    new-instance v1, Lcom/android/vendorsettings/ig;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/ig;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 677
    const v0, 0x10203a7

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 678
    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 679
    const v4, 0x7f040182

    invoke-virtual {v1, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 682
    iget-object v2, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->sR:Landroid/os/UserManager;

    const-string v4, "no_config_credentials"

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p1, Lcom/android/vendorsettings/io;->mProfileId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 684
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 686
    :cond_2
    invoke-static {p1}, Lcom/android/vendorsettings/io;->e(Lcom/android/vendorsettings/io;)Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->a(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/io;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 687
    new-instance v0, Lcom/android/vendorsettings/ih;

    invoke-direct {v0, p0, p1, v3}, Lcom/android/vendorsettings/ih;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/io;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 711
    return-void
.end method

.method private a(Lcom/android/vendorsettings/io;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    .line 716
    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bp:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/vendorsettings/io;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyChain$KeyChainConnection;

    .line 720
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 721
    invoke-static {p1}, Lcom/android/vendorsettings/io;->i(Lcom/android/vendorsettings/io;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 722
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 723
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 724
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 725
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v0, v6}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 726
    invoke-static {v0}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 727
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while retrieving certificate chain for root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/vendorsettings/io;->i(Lcom/android/vendorsettings/io;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    :cond_0
    return-void

    .line 734
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 735
    invoke-direct {p0, v0, p2, p3}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private a(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 741
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 742
    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/TrustedCredentialsSettings;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bp:Landroid/util/SparseArray;

    return-object v0
.end method

.method private ir()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 212
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bp:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 216
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->sR:Landroid/os/UserManager;

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 186
    const v0, 0x7f040183

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    .line 187
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 188
    sget-object v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BE:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)V

    .line 190
    sget-object v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BF:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BF:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    invoke-static {v1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->b(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->gR:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/im;

    .line 200
    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/im;->cancel(Z)Z

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bn:Lcom/android/vendorsettings/in;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bn:Lcom/android/vendorsettings/in;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/in;->cancel(Z)Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings;->Bn:Lcom/android/vendorsettings/in;

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->ir()V

    .line 207
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedFragment;->onDestroy()V

    .line 208
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x5c

    return v0
.end method
