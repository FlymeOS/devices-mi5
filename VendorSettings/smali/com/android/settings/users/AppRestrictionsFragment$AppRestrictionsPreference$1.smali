.class Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic atv:Landroid/widget/Switch;

.field final synthetic atw:Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;->atw:Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iput-object p2, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;->atv:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;->atw:Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->d(Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;->atv:Landroid/widget/Switch;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 225
    return-void
.end method
