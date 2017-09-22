.class public Lcom/android/vendorsettings/DataUsageSummary;
.super Lcom/android/vendorsettings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/vendorsettings/search/k;


# static fields
.field private static final ie:Ljava/lang/StringBuilder;

.field private static final if:Ljava/util/Formatter;

.field public static final ig:Lcom/android/vendorsettings/search/l;


# instance fields
.field private bz:Landroid/widget/ListView;

.field private gM:Landroid/os/INetworkManagementService;

.field private gN:Landroid/net/INetworkStatsService;

.field private gO:Landroid/net/NetworkPolicyManager;

.field private gP:Landroid/net/INetworkStatsSession;

.field private gQ:Landroid/content/SharedPreferences;

.field private gR:Landroid/widget/TabHost;

.field private gS:Landroid/view/ViewGroup;

.field private gT:Landroid/widget/TabWidget;

.field private gU:Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

.field private gV:Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

.field private gW:Lcom/android/vendorsettings/bO;

.field private gX:I

.field private gY:Landroid/view/ViewGroup;

.field private gZ:Landroid/view/ViewGroup;

.field private hA:Z

.field private hB:Landroid/net/NetworkTemplate;

.field private hC:Lcom/android/vendorsettings/d/a;

.field private hD:Lcom/android/vendorsettings/DataUsageSummary$AppItem;

.field private hE:Landroid/content/Intent;

.field private hF:Lcom/android/vendorsettings/d/f;

.field private hG:Ljava/lang/String;

.field private hH:Ljava/lang/String;

.field private hI:Landroid/view/MenuItem;

.field private hJ:Landroid/view/MenuItem;

.field private hK:Landroid/view/MenuItem;

.field private hL:Landroid/view/MenuItem;

.field private hM:Landroid/view/MenuItem;

.field private hN:Ljava/util/List;

.field private hO:Ljava/util/Map;

.field private hP:Z

.field private hQ:Lcom/android/vendorsettings/d/j;

.field private hR:Ljava/lang/String;

.field private final hS:Ljava/util/Map;

.field private hT:Landroid/widget/TabHost$TabContentFactory;

.field private hU:Landroid/widget/TabHost$OnTabChangeListener;

.field private hV:Landroid/view/View$OnClickListener;

.field private hW:Landroid/view/View$OnClickListener;

.field private hX:Landroid/view/View$OnClickListener;

.field private hY:Landroid/widget/AdapterView$OnItemClickListener;

.field private hZ:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private ha:Landroid/widget/LinearLayout;

.field private hb:Z

.field private hc:Landroid/widget/Switch;

.field private hd:Landroid/view/View;

.field private he:Z

.field private hf:Landroid/widget/Switch;

.field private hg:Landroid/view/View;

.field private hh:Landroid/view/View;

.field private hi:Landroid/widget/Spinner;

.field private hj:Lcom/android/vendorsettings/bK;

.field private hk:Landroid/widget/TextView;

.field private hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

.field private hm:Landroid/view/View;

.field private hn:Landroid/widget/TextView;

.field private ho:Landroid/view/View;

.field private hp:Landroid/view/View;

.field private hq:Landroid/widget/ImageView;

.field private hr:Landroid/view/ViewGroup;

.field private hs:Landroid/widget/TextView;

.field private ht:Landroid/widget/TextView;

.field private hu:Landroid/widget/TextView;

.field private hv:Landroid/widget/Button;

.field private hw:Landroid/widget/LinearLayout;

.field private hx:Landroid/widget/Switch;

.field private hy:Landroid/view/View;

.field private hz:Z

.field private final ia:Landroid/app/LoaderManager$LoaderCallbacks;

.field private final ib:Landroid/app/LoaderManager$LoaderCallbacks;

.field private ic:Lcom/android/vendorsettings/widget/e;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/vendorsettings/DataUsageSummary;->ie:Ljava/lang/StringBuilder;

    .line 1599
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/vendorsettings/DataUsageSummary;->ie:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/vendorsettings/DataUsageSummary;->if:Ljava/util/Formatter;

    .line 2724
    new-instance v0, Lcom/android/vendorsettings/bw;

    invoke-direct {v0}, Lcom/android/vendorsettings/bw;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/DataUsageSummary;->ig:Lcom/android/vendorsettings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Lcom/android/vendorsettings/HighlightingFragment;-><init>()V

    .line 223
    iput v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gX:I

    .line 258
    iput-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hz:Z

    .line 259
    iput-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hA:Z

    .line 264
    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hD:Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    .line 270
    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    .line 271
    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hH:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hS:Ljava/util/Map;

    .line 761
    new-instance v0, Lcom/android/vendorsettings/by;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/by;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hT:Landroid/widget/TabHost$TabContentFactory;

    .line 785
    new-instance v0, Lcom/android/vendorsettings/bz;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bz;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hU:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1243
    new-instance v0, Lcom/android/vendorsettings/bB;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bB;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hV:Landroid/view/View$OnClickListener;

    .line 1319
    new-instance v0, Lcom/android/vendorsettings/bD;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bD;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hW:Landroid/view/View$OnClickListener;

    .line 1333
    new-instance v0, Lcom/android/vendorsettings/bE;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bE;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hX:Landroid/view/View$OnClickListener;

    .line 1349
    new-instance v0, Lcom/android/vendorsettings/br;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/br;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hY:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1363
    new-instance v0, Lcom/android/vendorsettings/bs;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bs;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hZ:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1463
    new-instance v0, Lcom/android/vendorsettings/bt;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bt;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ia:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1494
    new-instance v0, Lcom/android/vendorsettings/bu;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bu;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ib:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1537
    new-instance v0, Lcom/android/vendorsettings/bv;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bv;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ic:Lcom/android/vendorsettings/widget/e;

    .line 2443
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/DataUsageSummary;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DataUsageSummary;->x(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gN:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 2619
    const v0, 0x7f0400cd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2620
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2622
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2623
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hT:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/DataUsageSummary$AppItem;)Lcom/android/vendorsettings/DataUsageSummary$AppItem;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hD:Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/d/a;)Lcom/android/vendorsettings/d/a;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    return-object p1
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1532
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1534
    return-object v0
.end method

.method public static a(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 1603
    .line 1605
    sget-object v8, Lcom/android/vendorsettings/DataUsageSummary;->ie:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1606
    :try_start_0
    sget-object v0, Lcom/android/vendorsettings/DataUsageSummary;->ie:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1607
    sget-object v1, Lcom/android/vendorsettings/DataUsageSummary;->if:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1609
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 3

    .prologue
    .line 2764
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hO:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2765
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/vendorsettings/DataUsageSummary;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2766
    if-eqz p3, :cond_1

    .line 2767
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hO:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/vendorsettings/DataUsageSummary;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2777
    :cond_0
    :goto_0
    return-void

    .line 2770
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hO:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v2, 0x7f0c08df

    invoke-direct {p0, v0, v2}, Lcom/android/vendorsettings/DataUsageSummary;->c(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private a(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hN:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1236
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1237
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/vendorsettings/DataUsageSummary;->f(IZ)V

    goto :goto_0

    .line 1241
    :cond_1
    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 2707
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2708
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2709
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2716
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2717
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2718
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2719
    return-void
.end method

.method private static a(Landroid/widget/ListView;I)V
    .locals 4

    .prologue
    .line 2689
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2690
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2694
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2695
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2696
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2698
    new-instance v2, Lcom/android/vendorsettings/c/c;

    invoke-direct {v2, v0, p1}, Lcom/android/vendorsettings/c/c;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2699
    new-instance v0, Lcom/android/vendorsettings/c/c;

    invoke-direct {v0, v1, p1}, Lcom/android/vendorsettings/c/c;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2700
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/DataUsageSummary;IZ)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/DataUsageSummary;->f(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/DataUsageSummary;J)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/DataUsageSummary;->e(J)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/DataUsageSummary;Z)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DataUsageSummary;->l(Z)V

    return-void
.end method

.method private a(Landroid/net/NetworkPolicy;)Z
    .locals 1

    .prologue
    .line 1085
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hc:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/net/NetworkPolicy;)V
    .locals 14

    .prologue
    const-wide v10, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v7, 0x0

    .line 1167
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hi:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/vendorsettings/bN;

    .line 1168
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    invoke-virtual {v0}, Lcom/android/vendorsettings/bK;->clear()V

    .line 1170
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hi:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1174
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    if-eqz v0, :cond_8

    .line 1175
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    iget-object v0, v0, Lcom/android/vendorsettings/d/a;->ahN:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v8

    .line 1176
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    iget-object v0, v0, Lcom/android/vendorsettings/d/a;->ahN:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 1179
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1180
    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    move-wide v10, v12

    .line 1181
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v8, v12, v2

    .line 1184
    :goto_2
    if-eqz p1, :cond_5

    .line 1186
    invoke-static {v8, v9, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v7

    .line 1189
    :goto_3
    cmp-long v2, v4, v10

    if-lez v2, :cond_0

    .line 1190
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1191
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v12, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    new-instance v0, Lcom/android/vendorsettings/bN;

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/bN;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/vendorsettings/bK;->add(Ljava/lang/Object;)V

    .line 1195
    const/4 v0, 0x1

    move-wide v4, v2

    .line 1196
    goto :goto_3

    .line 1199
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/bK;->m(Z)V

    .line 1202
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v8

    .line 1205
    :goto_5
    cmp-long v0, v4, v10

    if-lez v0, :cond_1

    .line 1206
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 1207
    iget-object v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    new-instance v0, Lcom/android/vendorsettings/bN;

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/bN;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v8, v0}, Lcom/android/vendorsettings/bK;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1209
    goto :goto_5

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    invoke-virtual {v0, v7}, Lcom/android/vendorsettings/bK;->m(Z)V

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    invoke-virtual {v0}, Lcom/android/vendorsettings/bK;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1216
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    invoke-virtual {v0, v6}, Lcom/android/vendorsettings/bK;->a(Lcom/android/vendorsettings/bN;)I

    move-result v3

    .line 1217
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hi:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/bK;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/bN;

    .line 1222
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1223
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hZ:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hi:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1231
    :goto_6
    return-void

    .line 1226
    :cond_3
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bw()V

    goto :goto_6

    .line 1229
    :cond_4
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bw()V

    goto :goto_6

    :cond_5
    move v0, v7

    goto :goto_4

    :cond_6
    move-wide v8, v2

    goto/16 :goto_2

    :cond_7
    move-wide v10, v8

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v8, v10

    goto/16 :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 474
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hR:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 478
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hR:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 480
    new-instance v1, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 481
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->v(I)V

    .line 483
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hQ:Lcom/android/vendorsettings/d/j;

    iget v2, v1, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/vendorsettings/d/j;->m(IZ)Lcom/android/vendorsettings/d/i;

    move-result-object v2

    .line 486
    const v0, 0x7f1300b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 487
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v2, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, v2, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/android/vendorsettings/A;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 488
    iget-object v0, v2, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;->a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0b09

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 493
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->br()V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/DataUsageSummary;J)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/DataUsageSummary;->d(J)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/DataUsageSummary;Z)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DataUsageSummary;->k(Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2542
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 2543
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2544
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 2545
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    move v0, v1

    .line 2547
    :goto_0
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 2551
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 2545
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2547
    goto :goto_1
.end method

.method private bn()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hI:Landroid/view/MenuItem;

    const v1, 0x7f0c08c4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 606
    :goto_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hz:Z

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hJ:Landroid/view/MenuItem;

    const v1, 0x7f0c08c7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 612
    :goto_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hA:Z

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hK:Landroid/view/MenuItem;

    const v1, 0x7f0c08c9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 617
    :goto_2
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hI:Landroid/view/MenuItem;

    const v1, 0x7f0c08c3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hJ:Landroid/view/MenuItem;

    const v1, 0x7f0c08c6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hK:Landroid/view/MenuItem;

    const v1, 0x7f0c08c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private bo()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hR:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gS:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/vendorsettings/DataUsageSummary;->bp()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 695
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/vendorsettings/DataUsageSummary;->bp()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 696
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gZ:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/vendorsettings/DataUsageSummary;->bp()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 698
    invoke-static {}, Lcom/android/vendorsettings/DataUsageSummary;->bp()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 699
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 700
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 701
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method private static bp()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 705
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 709
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 710
    return-object v0
.end method

.method private bq()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 719
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 720
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 722
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 724
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 725
    if-eqz v0, :cond_1

    .line 726
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 727
    if-le v5, v2, :cond_0

    move v1, v2

    :goto_1
    invoke-direct {p0, v4, v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 731
    :cond_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hz:Z

    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/android/vendorsettings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    const-string v1, "wifi"

    const v5, 0x7f0c08dd

    invoke-direct {p0, v1, v5}, Lcom/android/vendorsettings/DataUsageSummary;->c(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 735
    :cond_2
    iget-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hA:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    const-string v1, "ethernet"

    const v4, 0x7f0c08de

    invoke-direct {p0, v1, v4}, Lcom/android/vendorsettings/DataUsageSummary;->c(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 739
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gT:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 740
    :goto_2
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gT:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-le v1, v2, :cond_6

    .line 741
    :goto_3
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gT:Landroid/widget/TabWidget;

    if-eqz v2, :cond_7

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 742
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hH:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 743
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hH:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 745
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->br()V

    .line 749
    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hH:Ljava/lang/String;

    .line 756
    :cond_4
    :goto_6
    return-void

    :cond_5
    move v0, v3

    .line 739
    goto :goto_2

    :cond_6
    move v2, v3

    .line 740
    goto :goto_3

    .line 741
    :cond_7
    const/16 v3, 0x8

    goto :goto_4

    .line 747
    :cond_8
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_5

    .line 750
    :cond_9
    if-eqz v0, :cond_4

    .line 752
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->br()V

    goto :goto_6
.end method

.method private br()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/high16 v11, -0x1000000

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 799
    iput-boolean v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hP:Z

    .line 800
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 803
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 804
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 807
    :goto_1
    if-nez v2, :cond_2

    .line 808
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v8

    .line 805
    goto :goto_1

    .line 812
    :cond_2
    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 815
    iput-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    .line 819
    iput-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hb:Z

    .line 820
    iput-boolean v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->he:Z

    .line 826
    invoke-static {v2}, Lcom/android/vendorsettings/DataUsageSummary;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 828
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    const v1, 0x7f0c08e4

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 829
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    const v1, 0x7f0c08d9

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 830
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/DataUsageSummary;->x(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DataUsageSummary;->u(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hb:Z

    .line 834
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/DataUsageSummary;->x(Ljava/lang/String;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    .line 836
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    .line 872
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hF:Lcom/android/vendorsettings/d/f;

    invoke-virtual {v0}, Lcom/android/vendorsettings/d/f;->read()V

    .line 873
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hF:Lcom/android/vendorsettings/d/f;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v10

    .line 874
    if-eqz v10, :cond_3

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 876
    invoke-static {v4, v5, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 878
    const-wide/16 v6, 0x0

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gN:Landroid/net/INetworkStatsService;

    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 886
    :goto_3
    invoke-virtual {v10, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 887
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    const v1, 0x7f0c08ce

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 899
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hD:Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    invoke-static {v2, v3}, Lcom/android/vendorsettings/d/b;->a(Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->ia:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 903
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 905
    iput-boolean v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->hP:Z

    .line 907
    const v0, 0x7f0e0047

    invoke-virtual {v9, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 908
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "mobile"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 909
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    const-string v2, "mobile"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 911
    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 914
    if-eqz v1, :cond_4

    .line 915
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    .line 919
    :cond_4
    const/16 v1, 0x7f

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 921
    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->gU:Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v2, v11, v0, v1}, Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;->c(III)V

    .line 922
    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->gV:Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v2, v11, v0, v1}, Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;->c(III)V

    goto/16 :goto_0

    .line 839
    :cond_5
    const-string v0, "3g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 841
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    const v1, 0x7f0c08e5

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 842
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    const v1, 0x7f0c08db

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 844
    invoke-static {v9}, Lcom/android/vendorsettings/DataUsageSummary;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 846
    :cond_6
    const-string v0, "4g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 848
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    const v1, 0x7f0c08e6

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 849
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    const v1, 0x7f0c08da

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 851
    invoke-static {v9}, Lcom/android/vendorsettings/DataUsageSummary;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 853
    :cond_7
    const-string v0, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 856
    iput-boolean v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->hb:Z

    .line 857
    iput-boolean v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->he:Z

    .line 858
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 860
    :cond_8
    const-string v0, "ethernet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 863
    iput-boolean v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->hb:Z

    .line 864
    iput-boolean v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->he:Z

    .line 865
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 869
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tab: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :catch_0
    move-exception v0

    move-wide v0, v6

    .line 884
    goto/16 :goto_3

    .line 883
    :catch_1
    move-exception v0

    move-wide v0, v6

    goto/16 :goto_3

    .line 890
    :cond_a
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 892
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private bs()Z
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hD:Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bt()V
    .locals 13

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 935
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 936
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 938
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/bK;->n(Z)V

    .line 941
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 956
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hD:Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    iget v6, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    .line 957
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hQ:Lcom/android/vendorsettings/d/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/vendorsettings/d/j;->m(IZ)Lcom/android/vendorsettings/d/i;

    move-result-object v7

    .line 958
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hq:Landroid/widget/ImageView;

    iget-object v1, v7, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 960
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hr:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 962
    const/4 v1, 0x0

    .line 963
    iget-object v0, v7, Lcom/android/vendorsettings/d/i;->ahZ:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, v7, Lcom/android/vendorsettings/d/i;->ahZ:[Ljava/lang/CharSequence;

    array-length v8, v0

    .line 965
    const/4 v0, 0x0

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_0
    if-ge v1, v8, :cond_2

    .line 966
    iget-object v0, v7, Lcom/android/vendorsettings/d/i;->ahZ:[Ljava/lang/CharSequence;

    aget-object v9, v0, v1

    .line 967
    iget-object v0, v7, Lcom/android/vendorsettings/d/i;->aia:[Ljava/lang/CharSequence;

    aget-object v10, v0, v1

    .line 968
    const v0, 0x7f040053

    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->hr:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v5, v0, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 969
    const v0, 0x7f13009d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 970
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 972
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hr:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 965
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/bK;->n(Z)V

    .line 945
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1040
    :goto_1
    return-void

    .line 975
    :cond_1
    const v0, 0x7f040053

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hr:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 976
    const v0, 0x7f13009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 977
    iget-object v2, v7, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v2, v7, Lcom/android/vendorsettings/d/i;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hr:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 983
    :cond_2
    if-eqz v0, :cond_4

    .line 984
    const v1, 0x7f13009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hs:Landroid/widget/TextView;

    .line 990
    :goto_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 991
    if-eqz v2, :cond_6

    array-length v0, v2

    if-lez v0, :cond_6

    .line 992
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hE:Landroid/content/Intent;

    .line 993
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hE:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    const/4 v0, 0x0

    .line 997
    array-length v5, v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_3

    aget-object v7, v2, v1

    .line 998
    iget-object v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->hE:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    iget-object v7, p0, Lcom/android/vendorsettings/DataUsageSummary;->hE:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1000
    const/4 v0, 0x1

    .line 1005
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hv:Landroid/widget/Button;

    new-instance v2, Lcom/android/vendorsettings/bA;

    invoke-direct {v2, p0, v6}, Lcom/android/vendorsettings/bA;-><init>(Lcom/android/vendorsettings/DataUsageSummary;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hv:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1018
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hv:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1026
    :goto_4
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bw()V

    .line 1028
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/android/vendorsettings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1030
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    const v1, 0x7f0c08ea

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 1031
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    const v1, 0x7f0c08eb

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hx:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bu()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 986
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hs:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 997
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1021
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hE:Landroid/content/Intent;

    .line 1022
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hv:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hv:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 1038
    :cond_7
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private bu()Z
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hD:Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    .line 1105
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    .line 1106
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bv()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1271
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1272
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DataUsageSummary;->j(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 1275
    if-nez v1, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1279
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1283
    invoke-static {v0}, Lcom/android/vendorsettings/iC;->ag(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1286
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0, v8}, Lcom/android/vendorsettings/DataUsageSummary;->f(IZ)V

    .line 1287
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1289
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/telephony/SubscriptionInfo;)V

    .line 1291
    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->br()V

    goto :goto_0

    .line 1295
    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0a12

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1299
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1301
    const v3, 0x7f0c0400

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1302
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0401

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1305
    const v0, 0x7f0c01a7

    new-instance v3, Lcom/android/vendorsettings/bC;

    invoke-direct {v3, p0, v1}, Lcom/android/vendorsettings/bC;-><init>(Lcom/android/vendorsettings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1314
    const v0, 0x7f0c01a6

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1316
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1295
    :cond_4
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private bw()V
    .locals 14

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->wc()J

    move-result-wide v2

    .line 1405
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->wd()J

    move-result-wide v4

    .line 1406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1408
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 1410
    const/4 v8, 0x0

    .line 1411
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bs()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    iget-object v0, v0, Lcom/android/vendorsettings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_2

    .line 1413
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    iget-object v1, v0, Lcom/android/vendorsettings/d/a;->ahP:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1414
    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v10, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v10, v0

    .line 1415
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    iget-object v1, v0, Lcom/android/vendorsettings/d/a;->ahQ:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1416
    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v0, v12

    .line 1417
    add-long v12, v10, v0

    .line 1419
    iget-object v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->hs:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 1420
    iget-object v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->hs:Landroid/widget/TextView;

    invoke-static {v9, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1422
    :cond_0
    iget-object v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->hu:Landroid/widget/TextView;

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    iget-object v8, p0, Lcom/android/vendorsettings/DataUsageSummary;->ht:Landroid/widget/TextView;

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    iget-object v1, v0, Lcom/android/vendorsettings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1428
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1430
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hk:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    :goto_0
    if-eqz v8, :cond_4

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v0, v2

    .line 1445
    :goto_1
    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1446
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3g"

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4g"

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1450
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bs()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1451
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    :goto_2
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bo()V

    .line 1461
    return-void

    .line 1433
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    if-eqz v0, :cond_3

    .line 1434
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    iget-object v1, v0, Lcom/android/vendorsettings/d/a;->ahN:Landroid/net/NetworkStatsHistory;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1437
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hk:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1440
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    invoke-static {v6, v2, v3, v4, v5}, Lcom/android/vendorsettings/d/h;->a(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->ib:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1444
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 1453
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hm:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1456
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private c(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hT:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hE:Landroid/content/Intent;

    return-object v0
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hF:Lcom/android/vendorsettings/d/f;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/vendorsettings/d/f;->a(Landroid/net/NetworkTemplate;J)V

    .line 1045
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DataUsageSummary;->l(Z)V

    .line 1046
    return-void
.end method

.method private e(J)V
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hF:Lcom/android/vendorsettings/d/f;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/vendorsettings/d/f;->b(Landroid/net/NetworkTemplate;J)V

    .line 1051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DataUsageSummary;->l(Z)V

    .line 1052
    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/DataUsageSummary;)Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hP:Z

    return v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hc:Landroid/widget/Switch;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1523
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1524
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1525
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1527
    return-object v0
.end method

.method private f(Ljava/util/List;)Ljava/util/Map;
    .locals 5

    .prologue
    .line 2800
    const/4 v0, 0x0

    .line 2801
    if-eqz p1, :cond_1

    .line 2803
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2804
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2806
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2809
    :cond_1
    return-object v0
.end method

.method private f(IZ)V
    .locals 3

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1080
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DataUsageSummary;->l(Z)V

    .line 1082
    return-void
.end method

.method private static g(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2415
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2416
    if-nez v0, :cond_1

    .line 2417
    const-string v0, "subscription"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2419
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2435
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 2422
    goto :goto_0

    .line 2425
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2435
    goto :goto_0

    .line 2427
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2429
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2431
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2433
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic g(Lcom/android/vendorsettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2508
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    .line 2509
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 2511
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 2514
    if-nez v0, :cond_0

    .line 2531
    :goto_0
    return v3

    .line 2520
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2521
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_1

    move v0, v2

    :goto_2
    and-int/2addr v0, v1

    move v1, v0

    .line 2523
    goto :goto_1

    :cond_1
    move v0, v3

    .line 2521
    goto :goto_2

    .line 2524
    :cond_2
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_3
    move v3, v2

    .line 2531
    goto :goto_0

    :cond_3
    move v2, v3

    .line 2524
    goto :goto_3
.end method

.method static synthetic h(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bv()V

    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 2582
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2583
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1091
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gM:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1094
    :goto_0
    return v0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 5

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hN:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    if-eqz v0, :cond_1

    .line 2781
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    .line 2782
    const/4 v0, 0x0

    .line 2783
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2784
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/vendorsettings/DataUsageSummary;->b(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2785
    add-int/lit8 v2, v1, 0x1

    if-ne v1, v3, :cond_0

    .line 2791
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    :goto_2
    move v1, v0

    .line 2789
    goto :goto_0

    .line 2791
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic j(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hf:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic k(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hx:Landroid/widget/Switch;

    return-object v0
.end method

.method private k(Z)V
    .locals 3

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hD:Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    iget v1, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    .line 1112
    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1114
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hx:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1115
    return-void

    .line 1112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/d/j;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hQ:Lcom/android/vendorsettings/d/j;

    return-object v0
.end method

.method private l(Z)V
    .locals 12

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1122
    iget-boolean v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->hb:Z

    .line 1123
    iget-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->he:Z

    .line 1125
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bs()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    move v2, v1

    .line 1131
    :cond_0
    iget-object v5, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/vendorsettings/DataUsageSummary;->u(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1132
    iput-boolean v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hP:Z

    .line 1133
    iget-object v5, p0, Lcom/android/vendorsettings/DataUsageSummary;->hc:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/vendorsettings/DataUsageSummary;->x(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/vendorsettings/DataUsageSummary;->t(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1134
    iput-boolean v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hP:Z

    .line 1137
    :cond_1
    iget-object v5, p0, Lcom/android/vendorsettings/DataUsageSummary;->hF:Lcom/android/vendorsettings/d/f;

    iget-object v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v6}, Lcom/android/vendorsettings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 1139
    invoke-direct {p0, v5}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hG:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/vendorsettings/DataUsageSummary;->x(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/vendorsettings/DataUsageSummary;->u(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1140
    iget-object v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hf:Landroid/widget/Switch;

    if-eqz v5, :cond_4

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1141
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bs()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1142
    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v5}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 1151
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    if-eqz v2, :cond_6

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    if-eqz p1, :cond_3

    .line 1156
    invoke-direct {p0, v5}, Lcom/android/vendorsettings/DataUsageSummary;->b(Landroid/net/NetworkPolicy;)V

    .line 1158
    :cond_3
    return-void

    :cond_4
    move v3, v1

    .line 1140
    goto :goto_0

    .line 1148
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    move v0, v1

    goto :goto_1

    :cond_6
    move v2, v4

    .line 1151
    goto :goto_2

    :cond_7
    move v1, v4

    .line 1152
    goto :goto_3
.end method

.method static synthetic m(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hi:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic n(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/widget/ChartDataUsageView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic o(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bw()V

    return-void
.end method

.method static synthetic p(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gP:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic q(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/d/a;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hC:Lcom/android/vendorsettings/d/a;

    return-object v0
.end method

.method static synthetic r(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bt()V

    return-void
.end method

.method static synthetic s(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic t(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method private t(I)Z
    .locals 4

    .prologue
    .line 1056
    .line 1057
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1065
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    :goto_0
    return v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic u(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/bO;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gW:Lcom/android/vendorsettings/bO;

    return-object v0
.end method

.method private u(I)Z
    .locals 1

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static u(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2813
    if-eqz p0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic v(Lcom/android/vendorsettings/DataUsageSummary;)Z
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bs()Z

    move-result v0

    return v0
.end method

.method static synthetic w(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hn:Landroid/widget/TextView;

    return-object v0
.end method

.method private x(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hO:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2818
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2819
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2820
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hO:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2821
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2826
    :goto_0
    return v0

    .line 2825
    :cond_1
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " non mobile tab called this function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic x(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/view/View;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ho:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hB:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic y(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/vendorsettings/DataUsageSummary;->u(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic z(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/d/f;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hF:Lcom/android/vendorsettings/d/f;

    return-object v0
.end method


# virtual methods
.method public i(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 2594
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2595
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    .line 2598
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gP:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2600
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gP:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2611
    :goto_0
    if-eqz v8, :cond_1

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2603
    :catch_0
    move-exception v0

    .line 2604
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-wide v0, v6

    .line 2607
    goto :goto_0

    .line 2611
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    invoke-super {p0, p1}, Lcom/android/vendorsettings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 305
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gM:Landroid/os/INetworkManagementService;

    .line 307
    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gN:Landroid/net/INetworkStatsService;

    .line 309
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    .line 310
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 311
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 313
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "data_usage"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gQ:Landroid/content/SharedPreferences;

    .line 315
    new-instance v1, Lcom/android/vendorsettings/d/f;

    iget-object v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/vendorsettings/d/f;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hF:Lcom/android/vendorsettings/d/f;

    .line 316
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hF:Lcom/android/vendorsettings/d/f;

    invoke-virtual {v1}, Lcom/android/vendorsettings/d/f;->read()V

    .line 318
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hN:Ljava/util/List;

    .line 319
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hN:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hO:Ljava/util/Map;

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gM:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const-string v1, "DataUsage"

    const-string v2, "No bandwidth control; leaving"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gN:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gP:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gQ:Landroid/content/SharedPreferences;

    const-string v2, "show_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hz:Z

    .line 338
    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gQ:Landroid/content/SharedPreferences;

    const-string v2, "show_ethernet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hA:Z

    .line 341
    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    iput-boolean v4, p0, Lcom/android/vendorsettings/DataUsageSummary;->hz:Z

    .line 343
    iput-boolean v4, p0, Lcom/android/vendorsettings/DataUsageSummary;->hA:Z

    .line 346
    :cond_1
    new-instance v1, Lcom/android/vendorsettings/d/j;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/d/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hQ:Lcom/android/vendorsettings/d/j;

    .line 348
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_2

    .line 350
    const-string v1, "showAppImmediatePkg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hR:Ljava/lang/String;

    .line 353
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 354
    return-void

    .line 326
    :catch_0
    move-exception v1

    .line 327
    const-string v1, "DataUsage"

    const-string v2, "No bandwidth control; leaving"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    .line 334
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 546
    const v0, 0x7f140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 547
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x7f130000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 361
    const v0, 0x7f04005d

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 364
    const v0, 0x1020012

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    .line 365
    const v0, 0x7f1300b2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gS:Landroid/view/ViewGroup;

    .line 366
    const v0, 0x1020013

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gT:Landroid/widget/TabWidget;

    .line 367
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    .line 371
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v0

    const/high16 v3, 0x2000000

    if-ne v0, v3, :cond_0

    .line 373
    :cond_0
    iput v5, p0, Lcom/android/vendorsettings/DataUsageSummary;->gX:I

    .line 376
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    invoke-static {p2, v2, v0, v5}, Lcom/android/vendorsettings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 378
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 379
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gR:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hU:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 381
    const v0, 0x7f04005b

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    .line 382
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v8, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 385
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v8, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 386
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 388
    iget v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gX:I

    if-lez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->gX:I

    invoke-static {v0, v3}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/widget/ListView;I)V

    .line 391
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->gX:I

    iget v4, p0, Lcom/android/vendorsettings/DataUsageSummary;->gX:I

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    const v3, 0x7f1300ae

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gZ:Landroid/view/ViewGroup;

    .line 398
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    const v3, 0x7f1300af

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ha:Landroid/widget/LinearLayout;

    .line 400
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hc:Landroid/widget/Switch;

    .line 401
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hc:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hc:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ha:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hc:Landroid/widget/Switch;

    invoke-static {p1, v0, v3}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    .line 404
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    const-string v3, "data_usage_enable_mobile"

    invoke-virtual {v0, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hV:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ha:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hf:Landroid/widget/Switch;

    .line 412
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hf:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hf:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ha:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hf:Landroid/widget/Switch;

    invoke-static {p1, v0, v3}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    .line 415
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    const-string v3, "data_usage_disable_mobile_limit"

    invoke-virtual {v0, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hW:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ha:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    const v0, 0x7f040059

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->ha:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hh:Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hh:Landroid/view/View;

    const-string v3, "data_usage_cycle"

    invoke-virtual {v0, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hh:Landroid/view/View;

    const v3, 0x7f1300a7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hi:Landroid/widget/Spinner;

    .line 425
    new-instance v0, Lcom/android/vendorsettings/bK;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/bK;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    .line 426
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hi:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hj:Lcom/android/vendorsettings/bK;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 427
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hi:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hZ:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 428
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hh:Landroid/view/View;

    const v3, 0x7f1300a8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hk:Landroid/widget/TextView;

    .line 429
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ha:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hh:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    const v0, 0x7f1300a2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gU:Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

    .line 431
    const v0, 0x7f1300a3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gV:Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

    .line 434
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    const v3, 0x7f1300a0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    .line 435
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->ic:Lcom/android/vendorsettings/widget/e;

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->a(Lcom/android/vendorsettings/widget/e;)V

    .line 436
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hl:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v8}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 440
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    const v3, 0x7f1300a9

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    .line 441
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    const v3, 0x7f13001b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hq:Landroid/widget/ImageView;

    .line 442
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    const v3, 0x7f1300aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hr:Landroid/view/ViewGroup;

    .line 443
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    const v3, 0x7f1300ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ht:Landroid/widget/TextView;

    .line 444
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    const v3, 0x7f1300ac

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hu:Landroid/widget/TextView;

    .line 445
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    const v3, 0x7f1300ad

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hw:Landroid/widget/LinearLayout;

    .line 447
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hp:Landroid/view/View;

    const v3, 0x7f13001d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hv:Landroid/widget/Button;

    .line 449
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hx:Landroid/widget/Switch;

    .line 450
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hx:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hx:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hw:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hx:Landroid/widget/Switch;

    invoke-static {p1, v0, v3}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hX:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hw:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hy:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    const v3, 0x7f1300b0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hm:Landroid/view/View;

    .line 460
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    const v3, 0x1020004

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hn:Landroid/widget/TextView;

    .line 461
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    const v3, 0x7f1300b1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->ho:Landroid/view/View;

    .line 463
    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 464
    new-instance v1, Lcom/android/vendorsettings/bO;

    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hQ:Lcom/android/vendorsettings/d/j;

    iget v4, p0, Lcom/android/vendorsettings/DataUsageSummary;->gX:I

    invoke-direct {v1, v0, v3, v4}, Lcom/android/vendorsettings/bO;-><init>(Landroid/os/UserManager;Lcom/android/vendorsettings/d/j;I)V

    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gW:Lcom/android/vendorsettings/bO;

    .line 465
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hY:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->gW:Lcom/android/vendorsettings/bO;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 468
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/DataUsageSummary;->b(Landroid/view/View;)V

    .line 470
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hd:Landroid/view/View;

    .line 672
    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hg:Landroid/view/View;

    .line 674
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hQ:Lcom/android/vendorsettings/d/j;

    invoke-virtual {v0}, Lcom/android/vendorsettings/d/j;->clearCache()V

    .line 675
    iput-object v1, p0, Lcom/android/vendorsettings/DataUsageSummary;->hQ:Lcom/android/vendorsettings/d/j;

    .line 677
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gP:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 679
    invoke-super {p0}, Lcom/android/vendorsettings/HighlightingFragment;->onDestroy()V

    .line 680
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 621
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v7, v6

    .line 666
    :goto_0
    :sswitch_0
    return v7

    .line 623
    :sswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 624
    :goto_1
    if-eqz v0, :cond_1

    .line 625
    invoke-static {p0}, Lcom/android/vendorsettings/DataUsageSummary$ConfirmRestrictFragment;->A(Lcom/android/vendorsettings/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 623
    goto :goto_1

    .line 628
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 633
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hz:Z

    if-nez v0, :cond_2

    move v6, v7

    :cond_2
    iput-boolean v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hz:Z

    .line 634
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gQ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->hz:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 635
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bn()V

    .line 636
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bq()V

    goto :goto_0

    .line 640
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hA:Z

    if-nez v0, :cond_3

    move v6, v7

    :cond_3
    iput-boolean v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hA:Z

    .line 641
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gQ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/vendorsettings/DataUsageSummary;->hA:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 642
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bn()V

    .line 643
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bq()V

    goto :goto_0

    .line 651
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.settings.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 660
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 661
    const-class v1, Lcom/android/vendorsettings/d/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0905

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 621
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f130201 -> :sswitch_5
        0x7f1303d6 -> :sswitch_1
        0x7f1303d7 -> :sswitch_2
        0x7f1303d8 -> :sswitch_3
        0x7f1303d9 -> :sswitch_0
        0x7f1303da -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 552
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bs()Z

    move-result v5

    .line 553
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 555
    :goto_0
    const v3, 0x7f1303d7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hJ:Landroid/view/MenuItem;

    .line 556
    invoke-static {v4}, Lcom/android/vendorsettings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v4}, Lcom/android/vendorsettings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    iget-object v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hJ:Landroid/view/MenuItem;

    if-nez v5, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 562
    :goto_2
    const v3, 0x7f1303d8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hK:Landroid/view/MenuItem;

    .line 563
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v4}, Lcom/android/vendorsettings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 564
    iget-object v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hK:Landroid/view/MenuItem;

    if-nez v5, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    :goto_4
    const v3, 0x7f1303d6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hI:Landroid/view/MenuItem;

    .line 570
    iget-object v6, p0, Lcom/android/vendorsettings/DataUsageSummary;->hI:Landroid/view/MenuItem;

    invoke-static {v4}, Lcom/android/vendorsettings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    move v3, v1

    :goto_5
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 573
    const v3, 0x7f130201

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 574
    invoke-static {v4}, Lcom/android/vendorsettings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Lcom/android/vendorsettings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 575
    :cond_0
    if-nez v5, :cond_7

    move v3, v1

    :goto_6
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 581
    :goto_7
    const v3, 0x7f1303d9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hL:Landroid/view/MenuItem;

    .line 582
    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hL:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 584
    const v3, 0x7f1303da

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hM:Landroid/view/MenuItem;

    .line 585
    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hM:Landroid/view/MenuItem;

    invoke-static {v4}, Lcom/android/vendorsettings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v5, :cond_9

    if-eqz v0, :cond_9

    :goto_8
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 588
    const v0, 0x7f1303db

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 590
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c09b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 591
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/android/vendorsettings/dn;->a(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    .line 596
    :goto_9
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bn()V

    .line 597
    return-void

    :cond_1
    move v0, v2

    .line 553
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 557
    goto/16 :goto_1

    .line 559
    :cond_3
    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hJ:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    move v3, v2

    .line 564
    goto/16 :goto_3

    .line 566
    :cond_5
    iget-object v3, p0, Lcom/android/vendorsettings/DataUsageSummary;->hK:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_6
    move v3, v2

    .line 570
    goto/16 :goto_5

    :cond_7
    move v3, v2

    .line 575
    goto :goto_6

    .line 577
    :cond_8
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_9
    move v1, v2

    .line 585
    goto :goto_8

    .line 593
    :cond_a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 512
    invoke-super {p0}, Lcom/android/vendorsettings/HighlightingFragment;->onResume()V

    .line 514
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/bq;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/bq;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 522
    new-instance v0, Lcom/android/vendorsettings/bx;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bx;-><init>(Lcom/android/vendorsettings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/bx;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 542
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0, p1}, Lcom/android/vendorsettings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 503
    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->g(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->hH:Ljava/lang/String;

    .line 507
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bq()V

    .line 508
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/vendorsettings/DataUsageSummary;->gO:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1100
    invoke-direct {p0}, Lcom/android/vendorsettings/DataUsageSummary;->bn()V

    .line 1101
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0x25

    return v0
.end method
