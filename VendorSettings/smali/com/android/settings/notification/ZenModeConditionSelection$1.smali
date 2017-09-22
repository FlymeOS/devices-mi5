.class Lcom/android/settings/notification/ZenModeConditionSelection$1;
.super Ljava/lang/Object;
.source "ZenModeConditionSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic akQ:Landroid/widget/RadioButton;

.field final synthetic akR:Lcom/android/settings/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeConditionSelection;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeConditionSelection$1;->akR:Lcom/android/settings/notification/ZenModeConditionSelection;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeConditionSelection$1;->akQ:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 78
    if-eqz p2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection$1;->akR:Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection$1;->akQ:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->c(Landroid/service/notification/Condition;)V

    .line 81
    :cond_0
    return-void
.end method
