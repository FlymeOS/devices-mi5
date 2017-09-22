.class Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment$1;
.super Landroid/preference/Preference;
.source "ToggleFeaturePreferenceFragment.java"


# instance fields
.field final synthetic DE:Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment$1;->DE:Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment$1;->DE:Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 81
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 68
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment$1;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment$1;->g(Landroid/view/View;)V

    .line 71
    return-void
.end method
