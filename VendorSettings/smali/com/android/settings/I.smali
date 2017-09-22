.class public Lcom/android/settings/I;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"


# instance fields
.field private S:Landroid/appwidget/AppWidgetManager;

.field bq:Lcom/android/settings/K;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/K;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/I;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/I;->S:Landroid/appwidget/AppWidgetManager;

    .line 49
    iput-object p3, p0, Lcom/android/settings/I;->bq:Lcom/android/settings/K;

    .line 50
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;I)V
    .locals 6

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/I;->S:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v1

    .line 181
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/I;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 182
    return-void
.end method

.method a(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 58
    .line 61
    const-string v0, "customInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const-string v0, "AppWidgetAdapter"

    const-string v1, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 106
    :goto_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/I;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 107
    return-void

    .line 67
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v4

    .line 68
    :goto_1
    if-ge v1, v5, :cond_4

    .line 69
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 70
    if-eqz v0, :cond_2

    instance-of v0, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_3

    .line 72
    :cond_2
    const-string v0, "AppWidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 73
    goto :goto_0

    .line 68
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 77
    :cond_4
    const-string v0, "customExtras"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    if-nez v1, :cond_5

    .line 80
    const-string v0, "AppWidgetAdapter"

    const-string v3, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    .line 81
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 85
    if-eq v5, v6, :cond_6

    .line 88
    const-string v0, "AppWidgetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 90
    goto :goto_0

    :cond_6
    move v5, v4

    .line 94
    :goto_2
    if-ge v5, v6, :cond_9

    .line 95
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 96
    if-eqz v0, :cond_7

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_8

    .line 99
    :cond_7
    const-string v0, "AppWidgetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 100
    goto/16 :goto_0

    .line 94
    :cond_8
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_9
    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_0
.end method

.method a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 6

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 132
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 120
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 123
    if-nez p5, :cond_2

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v1, p4

    if-nez v1, :cond_2

    .line 119
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 127
    :cond_2
    iget-object v4, p0, Lcom/android/settings/I;->bq:Lcom/android/settings/K;

    iget-object v5, p0, Lcom/android/settings/I;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_2
    invoke-interface {v4, v5, v0, v1}, Lcom/android/settings/K;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/L;

    .line 130
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected e(Landroid/content/Intent;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 145
    const-string v0, "customSort"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    const-string v2, "categoryFilter"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 154
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/I;->a(Ljava/util/List;I)V

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/I;->a(Ljava/util/List;Landroid/content/Intent;)V

    .line 160
    :cond_0
    new-instance v2, Lcom/android/settings/J;

    invoke-direct {v2, p0}, Lcom/android/settings/J;-><init>(Lcom/android/settings/I;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    if-nez v0, :cond_1

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/I;->a(Ljava/util/List;Landroid/content/Intent;)V

    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_1
    return-object v1
.end method
