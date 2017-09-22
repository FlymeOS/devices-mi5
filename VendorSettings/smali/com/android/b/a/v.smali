.class Lcom/android/b/a/v;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# instance fields
.field final synthetic aIR:Lcom/android/b/a/a;


# direct methods
.method private constructor <init>(Lcom/android/b/a/a;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/a/a;Lcom/android/b/a/b;)V
    .locals 0

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/android/b/a/v;-><init>(Lcom/android/b/a/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/16 v3, -0x2710

    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1078
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1080
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1081
    :goto_0
    iget-object v2, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1082
    iget-object v2, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v3, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/b/a/a;->y(Ljava/lang/String;I)V

    .line 1081
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    :cond_0
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1086
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1087
    :goto_1
    iget-object v2, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1088
    iget-object v2, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v3, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/b/a/a;->z(Ljava/lang/String;I)V

    .line 1087
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1090
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1091
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1092
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1093
    :goto_2
    iget-object v2, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1094
    iget-object v2, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v3, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/b/a/a;->A(Ljava/lang/String;I)V

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1096
    :cond_2
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1104
    :cond_3
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1105
    if-eqz v3, :cond_4

    array-length v2, v3

    if-nez v2, :cond_5

    .line 1122
    :cond_4
    :goto_3
    return-void

    .line 1109
    :cond_5
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1110
    if-eqz v1, :cond_4

    .line 1111
    array-length v4, v3

    move v2, v0

    :goto_4
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    move v1, v0

    .line 1112
    :goto_5
    iget-object v6, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v6, v6, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 1113
    iget-object v6, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v7, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v7, v7, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/b/a/a;->A(Ljava/lang/String;I)V

    .line 1112
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1111
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 1117
    :cond_7
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1118
    iget-object v0, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;I)V

    goto :goto_3

    .line 1119
    :cond_8
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1120
    iget-object v0, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/b/a/a;->b(Lcom/android/b/a/a;I)V

    goto :goto_3
.end method

.method unregisterReceiver()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1074
    return-void
.end method

.method zn()V
    .locals 2

    .prologue
    .line 1056
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1057
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1058
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1059
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1062
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1063
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1064
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1067
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1068
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1069
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/android/b/a/v;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1071
    return-void
.end method
