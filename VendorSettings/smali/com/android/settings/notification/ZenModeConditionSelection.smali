.class public Lcom/android/vendorsettings/notification/ZenModeConditionSelection;
.super Landroid/widget/RadioGroup;
.source "ZenModeConditionSelection.java"


# instance fields
.field private final ajJ:Landroid/app/INotificationManager;

.field private final akM:Lcom/android/vendorsettings/notification/ZenModeConditionSelection$H;

.field private final akN:Ljava/util/List;

.field private akO:Landroid/service/notification/Condition;

.field private final akP:Landroid/service/notification/IConditionListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private a(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/android/vendorsettings/notification/ZenModeConditionSelection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/notification/ZenModeConditionSelection$1;-><init>(Lcom/android/vendorsettings/notification/ZenModeConditionSelection;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->addView(Landroid/view/View;)V

    .line 84
    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/notification/ZenModeConditionSelection;)Lcom/android/vendorsettings/notification/ZenModeConditionSelection$H;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->akM:Lcom/android/vendorsettings/notification/ZenModeConditionSelection$H;

    return-object v0
.end method

.method private static d(Landroid/service/notification/Condition;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected a([Landroid/service/notification/Condition;)V
    .locals 3

    .prologue
    .line 109
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->b(Landroid/service/notification/Condition;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method protected b(Landroid/service/notification/Condition;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->akN:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 117
    iget v2, p1, Landroid/service/notification/Condition;->state:I

    if-eq v2, v1, :cond_1

    iget v2, p1, Landroid/service/notification/Condition;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 118
    :cond_1
    if-nez v0, :cond_4

    .line 119
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->a(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;

    move-result-object v0

    move-object v2, v0

    .line 122
    :goto_1
    if-eqz v2, :cond_2

    .line 123
    invoke-static {p1}, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->d(Landroid/service/notification/Condition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget v0, p1, Landroid/service/notification/Condition;->state:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->akN:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method protected c(Landroid/service/notification/Condition;)V
    .locals 3

    .prologue
    .line 130
    const-string v0, "ZenModeConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->akO:Landroid/service/notification/Condition;

    .line 132
    return-void
.end method

.method protected cD(I)V
    .locals 3

    .prologue
    .line 100
    const-string v0, "ZenModeConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestZenModeConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->ajJ:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->akP:Landroid/service/notification/IConditionListener;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/RadioGroup;->onAttachedToWindow()V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->cD(I)V

    .line 91
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/RadioGroup;->onDetachedFromWindow()V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeConditionSelection;->cD(I)V

    .line 97
    return-void
.end method
