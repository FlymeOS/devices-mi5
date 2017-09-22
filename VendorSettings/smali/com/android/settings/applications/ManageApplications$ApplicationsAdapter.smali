.class Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/b/a/s;
.implements Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;


# instance fields
.field private final EV:Lcom/android/b/a/w;

.field private final Fh:Lcom/android/b/a/a;

.field private HH:I

.field private HI:Ljava/util/ArrayList;

.field private HJ:Ljava/util/ArrayList;

.field private HK:I

.field private HL:I

.field HM:Ljava/lang/CharSequence;

.field private HQ:Landroid/widget/Filter;

.field private final Kf:Lcom/android/vendorsettings/applications/ManageApplications;

.field private final Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

.field private Kh:Lcom/android/b/a/p;

.field private Ki:Z

.field private Kj:Z

.field private i:Landroid/content/pm/PackageManager;

.field private final mActive:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/ManageApplications;I)V
    .locals 4

    .prologue
    .line 754
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 725
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HK:I

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HL:I

    .line 733
    new-instance v0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HQ:Landroid/widget/Filter;

    .line 755
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Fh:Lcom/android/b/a/a;

    .line 756
    invoke-virtual {p1, p0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/s;)Lcom/android/b/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    .line 757
    iput-object p2, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    .line 758
    invoke-virtual {p2}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 759
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->i:Landroid/content/pm/PackageManager;

    .line 760
    iput p3, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HH:I

    .line 761
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 762
    new-instance v0, Lcom/android/vendorsettings/applications/AppStateNotificationBridge;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Fh:Lcom/android/b/a/a;

    invoke-static {p2}, Lcom/android/vendorsettings/applications/ManageApplications;->c(Lcom/android/vendorsettings/applications/ManageApplications;)Lcom/android/vendorsettings/notification/NotificationBackend;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/vendorsettings/applications/AppStateNotificationBridge;-><init>(Landroid/content/pm/PackageManager;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;Lcom/android/vendorsettings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    .line 775
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 765
    new-instance v0, Lcom/android/vendorsettings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Fh:Lcom/android/b/a/a;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/vendorsettings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 767
    new-instance v0, Lcom/android/vendorsettings/applications/AppStatePowerBridge;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Fh:Lcom/android/b/a/a;

    invoke-direct {v0, v1, p0}, Lcom/android/vendorsettings/applications/AppStatePowerBridge;-><init>(Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 769
    new-instance v0, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Fh:Lcom/android/b/a/a;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 770
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 771
    new-instance v0, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Fh:Lcom/android/b/a/a;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 773
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Lcom/android/vendorsettings/applications/AppViewHolder;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    packed-switch v0, :pswitch_data_0

    .line 1105
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->Hd:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HL:I

    invoke-virtual {p1, v0, v1}, Lcom/android/vendorsettings/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 1108
    :goto_0
    return-void

    .line 1069
    :pswitch_1
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v1, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    check-cast v0, Lcom/android/vendorsettings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->a(Lcom/android/vendorsettings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1073
    :cond_0
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1078
    :pswitch_2
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->aq(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1082
    :pswitch_3
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1083
    iget-object v1, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    new-instance v2, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    check-cast v0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v2, v0}, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->jQ()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0abb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0abc

    goto :goto_1

    .line 1087
    :cond_2
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1092
    :pswitch_4
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    invoke-static {v1, v2}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->a(Landroid/content/Context;Lcom/android/b/a/o;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1096
    :pswitch_5
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    invoke-static {v1, v2}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->a(Landroid/content/Context;Lcom/android/b/a/o;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1100
    :pswitch_6
    iget-object v0, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    invoke-static {v1, v2}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->a(Landroid/content/Context;Lcom/android/b/a/o;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->kN()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    .prologue
    .line 712
    iput-boolean p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Ki:Z

    return p1
.end method

.method private aq(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const v2, 0x7f0c0b11

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1123
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->i:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 1124
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1135
    :goto_0
    return-object v0

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->i:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/iC;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1130
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1132
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1133
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0b12

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1135
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0b13

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Ki:Z

    return v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/vendorsettings/applications/AppStateBaseBridge;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    return-object v0
.end method

.method private kN()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 896
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->f(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->e(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Ki:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->zo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/vendorsettings/iC;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 899
    return-void

    :cond_0
    move v0, v1

    .line 896
    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 903
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-object p2

    .line 906
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/a;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 908
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 910
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 911
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 912
    invoke-virtual {v0}, Lcom/android/b/a/o;->zm()Ljava/lang/String;

    move-result-object v5

    .line 913
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 914
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 917
    goto :goto_0
.end method

.method public a(Lcom/android/b/a/p;)V
    .locals 1

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kh:Lcom/android/b/a/p;

    .line 779
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    .line 780
    return-void
.end method

.method public aH(I)V
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HK:I

    if-ne p1, v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_0
    iput p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HK:I

    .line 824
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    goto :goto_0
.end method

.method public aI(I)Lcom/android/b/a/o;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    return-object v0
.end method

.method public aO(I)V
    .locals 1

    .prologue
    .line 783
    iput p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HH:I

    .line 784
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    .line 785
    return-void
.end method

.method public aj(Z)V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 930
    return-void
.end method

.method public ak(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 828
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Ki:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kj:Z

    if-eqz v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    sget-boolean v0, Lcom/android/vendorsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ManageApplications"

    const-string v1, "Rebuilding app list..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 837
    if-eqz v0, :cond_7

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HL:I

    .line 842
    :goto_1
    sget-object v0, Lcom/android/vendorsettings/applications/ManageApplications;->JU:[Lcom/android/b/a/p;

    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HH:I

    aget-object v0, v0, v1

    .line 843
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kh:Lcom/android/b/a/p;

    if-eqz v1, :cond_3

    .line 844
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kh:Lcom/android/b/a/p;

    .line 846
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ManageApplications;->d(Lcom/android/vendorsettings/applications/ManageApplications;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 847
    new-instance v1, Lcom/android/b/a/t;

    sget-object v2, Lcom/android/b/a/a;->aIv:Lcom/android/b/a/p;

    invoke-direct {v1, v0, v2}, Lcom/android/b/a/t;-><init>(Lcom/android/b/a/p;Lcom/android/b/a/p;)V

    move-object v0, v1

    .line 850
    :cond_4
    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HK:I

    packed-switch v1, :pswitch_data_0

    .line 865
    sget-object v1, Lcom/android/b/a/a;->aIo:Ljava/util/Comparator;

    .line 868
    :goto_2
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v2, v0, v1}, Lcom/android/b/a/w;->a(Lcom/android/b/a/p;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 870
    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    .line 874
    :cond_5
    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    .line 875
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 876
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HM:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    .line 880
    :goto_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 882
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->zo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->e(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 884
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->f(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ManageApplications;->e(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/android/vendorsettings/iC;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 887
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Fh:Lcom/android/b/a/a;

    invoke-virtual {v1}, Lcom/android/b/a/a;->zi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->ar(Z)V

    goto/16 :goto_0

    .line 840
    :cond_7
    iput v3, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HL:I

    goto :goto_1

    .line 852
    :pswitch_0
    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HL:I

    packed-switch v1, :pswitch_data_1

    .line 860
    sget-object v1, Lcom/android/b/a/a;->aIp:Ljava/util/Comparator;

    goto :goto_2

    .line 854
    :pswitch_1
    sget-object v1, Lcom/android/b/a/a;->aIq:Ljava/util/Comparator;

    goto :goto_2

    .line 857
    :pswitch_2
    sget-object v1, Lcom/android/b/a/a;->aIr:Ljava/util/Comparator;

    goto :goto_2

    .line 878
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    goto :goto_3

    .line 850
    :pswitch_data_0
    .packed-switch 0x7f1303e0
        :pswitch_0
    .end packed-switch

    .line 852
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public al(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 965
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/AppViewHolder;

    .line 967
    iget-object v3, v0, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 968
    iget-object v1, v0, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    monitor-enter v1

    .line 969
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/vendorsettings/applications/AppViewHolder;)V

    .line 970
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    iget-object v0, v0, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ManageApplications;->g(Lcom/android/vendorsettings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HK:I

    const v1, 0x7f1303e0

    if-ne v0, v1, :cond_0

    .line 977
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    .line 982
    :cond_0
    return-void

    .line 970
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 965
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->f(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->f(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 937
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->e(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->e(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->f(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 942
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    .line 943
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HM:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    .line 944
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 945
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HQ:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->h(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/vendorsettings/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/vendorsettings/applications/AppViewHolder;

    move-result-object v1

    .line 1033
    iget-object v2, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hj:Landroid/view/View;

    .line 1036
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 1037
    monitor-enter v0

    .line 1038
    :try_start_0
    iput-object v0, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    .line 1039
    iget-object v3, v0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1040
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hk:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    :cond_0
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/b/a/o;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/vendorsettings/applications/AppViewHolder;)V

    .line 1050
    iget-object v3, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 1051
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hm:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v1, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hm:Landroid/widget/TextView;

    const v3, 0x7f0c05a9

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1059
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1063
    return-object v2

    .line 1053
    :cond_1
    :try_start_1
    iget-object v3, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_2

    .line 1054
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hm:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1055
    iget-object v1, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hm:Landroid/widget/TextView;

    const v3, 0x7f0c05a8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1059
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1057
    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hm:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1021
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 1025
    :goto_0
    return v1

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 1025
    invoke-static {}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->rf()Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public jA()V
    .locals 0

    .prologue
    .line 956
    return-void
.end method

.method public jB()V
    .locals 2

    .prologue
    .line 993
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HK:I

    const v1, 0x7f1303e0

    if-ne v0, v1, :cond_0

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    .line 996
    :cond_0
    return-void
.end method

.method public jC()V
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->d(Lcom/android/vendorsettings/applications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    .line 989
    :cond_0
    return-void
.end method

.method public jD()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Ki:Z

    .line 961
    return-void
.end method

.method public jR()V
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kj:Z

    .line 924
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    .line 925
    return-void
.end method

.method public jz()V
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    .line 950
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1118
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 805
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->pause()V

    .line 806
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->pause()V

    .line 810
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->release()V

    .line 814
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->release()V

    .line 817
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 788
    sget-boolean v0, Lcom/android/vendorsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    .line 790
    iput-boolean v3, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 791
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->resume()V

    .line 792
    iput p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HK:I

    .line 793
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->Kg:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->resume()V

    .line 796
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->aH(I)V

    goto :goto_0
.end method
