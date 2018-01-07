//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "UIPickerView+Markup.h"

@implementation UIPickerView (Markup)

- (NSString *)nameForComponent:(NSInteger)component
{
    return nil;
}

- (NSInteger)componentWithName:(NSString *)name
{
    NSInteger component = 0, n = [self numberOfComponents];

    while (component < n) {
        if ([[self nameForComponent:component] isEqual:name]) {
            break;
        }

        component++;
    }

    return (component < n) ? component : NSNotFound;
}

- (id)valueForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return nil;
}

- (void)setValue:(id)value forRow:(NSInteger)row forComponent:(NSInteger)component
{
    [NSException raise:NSGenericException format:@"Method not implemented."];
}

- (nullable id)valueForComponent:(NSInteger)component
{
    NSInteger row = [self selectedRowInComponent:component];

    return (row == -1) ? nil : [self valueForRow:row forComponent:component];
}

- (void)setValue:(nullable id)value forComponent:(NSInteger)component animated:(BOOL)animated
{
    NSInteger row = -1;

    if (value != nil) {
        for (NSUInteger i = 0, n = [self numberOfRowsInComponent:component]; i < n; i++) {
            if ([[self valueForRow:i forComponent:component] isEqual:value]) {
                row = i;

                break;
            }
        }
    }

    [self selectRow:row inComponent:component animated:animated];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 0;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 0;
}

@end
