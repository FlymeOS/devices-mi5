.class Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationStation.java"


# instance fields
.field final synthetic ajO:Lcom/android/vendorsettings/notification/NotificationStation;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/notification/NotificationStation;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 304
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 305
    return-void
.end method

.method private e(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;

    .line 310
    const-string v1, "getView(%s/%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/vendorsettings/notification/NotificationStation;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    if-eqz p2, :cond_2

    .line 313
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 316
    iget-object v1, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 317
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    iget-object v1, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->ajP:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 320
    const v1, 0x7f13016e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->ajP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_1
    const v1, 0x7f13016f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    iget-wide v2, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 324
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    const v1, 0x7f130171

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->ajQ:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v1, 0x7f130170

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-boolean v1, v0, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 331
    new-instance v1, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter$1;-><init>(Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    return-object p2

    .line 312
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 328
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_1
.end method
